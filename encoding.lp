% encoding.lp

% Assign a section to each instructor
1 { assigned_section(Name, Code, Sec) : instructor_course(Name, Code) } 1 :- course(Code, _,_,_,_,_,_,Sec).

% Assign timeslots and rooms to unique lecture hours and their different sections
1 { assign(Course, Room, Timeslot, Section, Instructor, Hour) : classroom(Room, _), timeslot(Timeslot, _) } 1 
    :- course(Course, _, _, _, _, _, Hours, Section), assigned_section(Instructor, Course, Section), Hour = 1..Hours.


%%%% Basic Constraints: %%%%
% Constraint 1: Each instructor should have at least 1 section if they're teaching that course
:- instructor_course(Name, Code), not assigned_section(Name, Code, _).

% Constraint 2: [Capacity Constraint] Classroom capacity should be sufficient for the course/section pair
:- assign(Course, Room, _, Section, Instructor, Hour), course(Course, _, _, _, _, Capacity, _, Section), 
    classroom(Room, RoomCapacity), Capacity > RoomCapacity.

% Constraint 3: [LectureHour-Timeslot] Same timeslot cannot be given to different lecture hours
:- assign(Course, _, Timeslot, Section, Instructor, Hour1), assign(Course, _, Timeslot, Section, Instructor, Hour2), Hour1 != Hour2.

% % Constraint 4: [Course-Place/Time] Same timeslot+room cannot be given to different courses
Course1 = Course2 :- assign(Course1, Room, Timeslot, _, _, _), assign(Course2, Room, Timeslot, _, _, _).

% Constraint 5: [Section-Place/Time] Same timeslot+room cannot be given to different sections of same course
:-assign(Course, Room, Timeslot, Section1, _, _), assign(Course, Room, Timeslot, Section2, _, _), Section1 != Section2.



% %%%% Place Constraint %%%% 
% % Constraint 1: Non-service undergraduate level courses cannot occupy a classroom longer than 2 hours consecutively
%  :- assign(Course1, Room, T1, Section, _, 1), 
%     assign(Course1, Room, T2, Section, _, 2), 
%     assign(Course1, Room, T3, Section, _, 3),
%     timeslot(T1, Index1), timeslot(T2, Index2), timeslot(T3, Index3),
%     Index2 == Index1+1, Index3 == Index2+1, course(Course1, _, "no", "undergraduate", _, _, _, Section),

% %  :- assign(Course, Room, T1, Section), assign(Course, Room, T2, Section), assign(Course, Room, T3, Section),
% %     timeslot(T1, Index1), timeslot(T2, Index2), timeslot(T3, Index3),
% %     Index2 == Index1+1, Index3 == Index2+1, course(Course, _, "no", "undergraduate", _, _, _, Section).

% % % Constraint 2: If a non-service undergraduate level course has split into three sections, one hour of lecture must be conducted at BMB1 at least
% % :- course(Course, _, "no", "undergraduate", _, _, _, 3), not assign(Course, "bmb_1", _, _).

% % % Constraint 3: If a non-service undergraduate level course has split into two sections, all hours must be conducted at BMB1.
% :- course(Course, _, "no", "undergraduate", _, _, _, 2), not 2 { assign(Course, "bmb_1", _, _, _, _) }.



% %%%% Instructor Constraints %%%% 
% % An instructor cannot give more than one course at a time
% :- assign(Course1, _, Timeslot, _, Instructor, _), assign(Course2, _, Timeslot, _, Instructor, _), Course1 != Course2.

% % An instructor cannot give more than one section at a time
% :- assign(Course1, _, Timeslot, _, Instructor, _), assign(Course2, _, Timeslot, _, Instructor, _), Course1 != Course2.

% % An instructor cannot give a course during their busy hour
% :-assign(_, _, Timeslot, _, Instructor, _), busy(Instructor, Timeslot).



% Print out assignments in a human-readable form
#show assign/6.
