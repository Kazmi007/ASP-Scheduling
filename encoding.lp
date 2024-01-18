% encoding.lp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ASSIGNMENT RULES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assign a section to each instructor
1 { assigned_section(Name, Code, Sec) : instructor_course(Name, Code) } 1 :- course(Code, _,_,_,_,_,_,Sec).

% Assign timeslots and rooms to unique lecture hours and their different sections
1 { assign(Course, Room, Timeslot, Section, Instructor, Hour) : classroom(Room, _), timeslot(Timeslot, _) } 1
    :- course(Course, _, _, _, _, _, Hours, Section), assigned_section(Instructor, Course, Section), Hour = 1..Hours.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HARD CONSTRAINTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% Basic Constraints: %%%%
%% Constraint 1: [Instructor-Section] Each instructor should have at least 1 section if they're teaching that course
:- instructor_course(Name, Code), not assigned_section(Name, Code, _).

%% Constraint 2: [Capacity Constraint] Classroom capacity should be sufficient for the course/section pair
:- assign(Course, Room, _, Section, Instructor, Hour), course(Course, _, _, _, _, Capacity, _, Section), 
    classroom(Room, RoomCapacity), Capacity > RoomCapacity.

%% Constraint 3: [Unique Classroom-Timeslot] Different courses cannot have the same classroom at the same timeslot
:- assign(Course1, Room, Timeslot, _, _, _), assign(Course2, Room, Timeslot, _, _, _), Course1 != Course2.

%% Constraint 4: [LectureHour-Timeslot] Same timeslot cannot be given to different lecture hours
:- assign(Course, _, Timeslot, Section, _, Hour1), assign(Course, _, Timeslot, Section, _, Hour2), Hour1 != Hour2.

%% Constraint 5: [Section-Place/Time] Same timeslot+room cannot be given to different sections of same course
:-assign(Course, Room, Timeslot, Section1, _, _), assign(Course, Room, Timeslot, Section2, _, _), Section1 != Section2.

%% Constraint 6: [Lecture Hours assigned with order]
:- assign(Course, _, T1, _, _, 1), 
   assign(Course, _, T2, _, _, 2), 
   timeslot(T1, Index1), timeslot(T2, Index2),
   Index1 > Index2.

:- assign(Course1, _, T2, _, _, 2), 
   assign(Course1, _, T3, _, _, 3),
   timeslot(T2, Index2), timeslot(T3, Index3), 
   Index2 > Index3. 

%% Constraint 7: [Same batch - non clashing] Same batch courses, should not clash on the same time
:- assign(Course1, _, Timeslot, _, _, _), assign(Course2, _, Timeslot, _, _, _),
    batch(Course1, Batch), batch(Course2, Batch), Course1 != Course2.


%% Constraint 8: If a course section has 3 lecture hours, make lecture hour 1 and 2 on the same day
:- assign(Course, _, T1, Section, _, 1), 
   assign(Course, _, T2, Section, _, 2), 
   assign(Course, _, T3, Section, _, 3),
   timeslot(T1, Index1), timeslot(T2, Index2),
   Day1 = Index1 / 100, Day2 = Index2 / 100,
   Day1 != Day2.

% % UNSAT
% % Constraint 8: [If two lecture hours are on the same day, give them consecutive time]
% :- assign(Course, _, T1, Section, _, L1), 
%    assign(Course, _, T2, Section, _, L2),
%    T1 != T2,
%    timeslot(T1, Index1), timeslot(T2, Index2),
%    Day1 = Index1 / 100, Day2 = Index2 / 100, L1 != L2,
%    Day1 == Day2, |Index1 - Index2| != 1.

%% Constraint 9: [If two lecture hours are consecutive, give the same room]
:- assign(Course, Room1, T1, _, _, 1), 
   assign(Course, Room2, T2, _, _, 2), 
   timeslot(T1, Index1), timeslot(T2, Index2),
   Index1 == Index2 - 1, Room1 != Room2.

% :- assign(Course, Room2, T2, _, _, 2), 
%    assign(Course, Room3, T3, _, _, 3), 
%    timeslot(T2, Index2), timeslot(T3, Index3),
%    Index2 == Index3 - 1, Room2 != Room3.

%% Constraint 10: [3 hour lecture courses shouldn't all be on the same day]
:- assign(Course, _, Timeslot1, _, _, 1), 
   assign(Course, _, Timeslot2, _, _, 2), 
   assign(Course, _, Timeslot3, _, _, 3),
   timeslot(Timeslot1, Index1), timeslot(Timeslot2, Index2), timeslot(Timeslot3, Index3),
   Day1 = Index1 / 100, Day2 = Index2 / 100, Day3 = Index3 / 100,
   Day1 == Day2, Day2 == Day3.


%%%% Place Constraints: %%%%
%% Constraint 11: [NonService-Hour] Non-service undergraduate level courses cannot occupy a classroom longer than 2 hours consecutively
:- assign(Course1, Room, T1, _, _, 1), 
   assign(Course1, Room, T2, _, _, 2), 
   assign(Course1, Room, T3, _, _, 3),
   timeslot(T1, Index1), timeslot(T2, Index2), timeslot(T3, Index3),
   |Index2 - Index1| == 1, |Index2 - Index3| == 1, course(Course1, _, no, undergraduate, _, _, _, _).

%% Constraint 12: [NonService-BMB1] For non-service undergraduate courses with three sections, at least one lecture hour per section must be conducted in BMB1
:- course(Course, _, no, undergraduate, _, _, _, 3), Section = 1..3, not 1 { assign(Course, bmb_1, _, Section, _, _)}.

%% Constraint 13: [NonService-BMB1] If a non-service undergraduate level course has split into two sections, all hours must be conducted at BMB1.
:- course(Course, _, no, undergraduate, _, _, _, 2), not 2 { assign(Course, bmb_1, _, _, _, _) }.


%%%% Instructor Constraints: %%%%
%% Constraint 14: [Instructor-Course] An instructor cannot give more than one course at a time
:- assign(Course1, _, Timeslot, _, Instructor, _), assign(Course2, _, Timeslot, _, Instructor, _), Course1 != Course2.

%% Constraint 15: [Instructor-Section] An instructor cannot give more than one section at a time
:- assign(_, _, Timeslot, Section1, Instructor, _), assign(_, _, Timeslot, Section2, Instructor, _), Section1 != Section2.

%% Constraint 14: [Instructor Busy Hour] An instructor cannot give a course during their busy hour
:- assign(_, _, Timeslot, _, Instructor, _), busy(Instructor, Timeslot).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SOFT CONSTRAINTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --> 2 hours together if 3 hour lecture           ---> DONE
%% --> Same batch lectures fewer gaps               ---> DONE

%% Calculate gap between two lectures on the same day for same batch
gap_courses(Course1, Course2, Gap) :-
    assign(Course1, _, Timeslot1, _, _, _),
    assign(Course2, _, Timeslot2, _, _, _),
    timeslot(Timeslot1, Index1),
    timeslot(Timeslot2, Index2),
    Day1 = Index1 / 100, % Extracting day part
    Day2 = Index2 / 100, % Extracting day part
    Day1 == Day2,        % Ensure we're comparing timeslots on the same day
    batch(Course1, Batch),
    batch(Course2, Batch),
    Gap = |Index2 - Index1|,
    Course1 != Course2.

%% Constraint 1: Minimize gap between two lectures on the same day for the same batch
#minimize {Gap, Course1, Course2, Batch : gap_courses(Course1, Course2, Gap), batch(Course1, Batch), batch(Course2, Batch) }.

%Calculates GAP between two lecture hours of a course
gap_lecturehours(Course, Section, L1, L2, Gap) :-
    assign(Course, _, Timeslot1, Section, _, L1),
    assign(Course, _, Timeslot2, Section, _, L2),
    timeslot(Timeslot1, Index1),
    timeslot(Timeslot2, Index2), L1 != L2,
    Gap = |Index2 - Index1|.

%% Constraint 2: Minimize gap between two lectures hours on the same day of the same course+section
#minimize { Gap : gap_lecturehours(Course, Section, L1, L2, Gap), Course = Course, Section = Section, L1 = L1, L2 = L2 }.





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OUTPUT SPECIFICATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#show assign/6.
