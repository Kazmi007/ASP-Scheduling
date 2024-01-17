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


%%%% Place Constraints: %%%%
%% Constraint 1: [NonService-Hour] Non-service undergraduate level courses cannot occupy a classroom longer than 2 hours consecutively
:- assign(Course1, Room, T1, _, _, 1), 
   assign(Course1, Room, T2, _, _, 2), 
   assign(Course1, Room, T3, _, _, 3),
   timeslot(T1, Index1), timeslot(T2, Index2), timeslot(T3, Index3),
   |Index2 - Index1| == 1, |Index2 - Index3| == 1, |Index3 - Index1| == 1, course(Course1, _, no, undergraduate, _, _, _, _).

%% Constraint 2: [NonService-BMB1] For non-service undergraduate courses with three sections, at least one lecture hour per section must be conducted in BMB1
:- course(Course, _, no, undergraduate, _, _, _, 3), Section = 1..3, not 1 { assign(Course, bmb_1, _, Section, _, _)}.

%% Constraint 3: [NonService-BMB1] If a non-service undergraduate level course has split into two sections, all hours must be conducted at BMB1.
:- course(Course, _, no, undergraduate, _, _, _, 2), not 2 { assign(Course, bmb_1, _, _, _, _) }.


%%%% Instructor Constraints: %%%%
%% Constraint 1: [Instructor-Course] An instructor cannot give more than one course at a time
:- assign(Course1, _, Timeslot, _, Instructor, _), assign(Course2, _, Timeslot, _, Instructor, _), Course1 != Course2.

%% Constraint 2: [Instructor-Section] An instructor cannot give more than one section at a time
:- assign(_, _, Timeslot, Section1, Instructor, _), assign(_, _, Timeslot, Section2, Instructor, _), Section1 != Section2.

%% Constraint 3: [Instructor Busy Hour] An instructor cannot give a course during their busy hour
:-assign(_, _, Timeslot, _, Instructor, _), busy(Instructor, Timeslot).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SOFT CONSTRAINTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TODO %%
%% --> Limiting Hours per Instructor daily
%% --> 2 hours together if 3 hour lecture
%% --> Same batch lecture non-clashing (hard?)
%% --> Same batch lectures fewer gaps
%% --> back-to-back classes limit(instructor)
%% --> limit days of week to 5? friday?




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OUTPUT SPECIFICATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#show assign/6.
