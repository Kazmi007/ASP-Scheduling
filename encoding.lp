% encoding.lp



% Assign a section to each instructor
1 { assigned_section(Name, Code, Sec) : instructor_course(Name, Code) } 1 :- course(Code, _,_,_,_,_,_,Sec).

% Each instructor should have at least 1 section if they're teaching that course
:- instructor_course(Name, Code), not assigned_section(Name, Code, _).

% Assign timeslots and rooms to unique lecture hours and their different sections
1 { assign(Course, Room, Timeslot, Section, Instructor, Hour) : classroom(Room, _), timeslot(Timeslot, _) } 1 
    :- course(Course, _, _, _, _, _, Hours, Section), assigned_section(Instructor, Course, Section), Hour = 1..Hours.

% Same Hour should not have same room and timeslot
%:- assign(Course1, Room, Timeslot, Section, Instructor, Hour), assign(Course2, Room, Timeslot, Section, Instructor, Hour), Course1 != Course2.






% Constraint 1: Classroom capacity should be sufficient for the course/section pair
%:- assign(Course, Room, _, Section, _), course(Course, _, _, _, _, Capacity, _, Section), classroom(Room, RoomCapacity), Capacity > RoomCapacity.





%%%% Capacity Constraint %%%% 
% Constraint 1: Classroom capacity should be sufficient for the course/section
%:- assign(Course, Room, _, Section), course(Course, _, _, _, _, Capacity, _, Section), classroom(Room, RoomCapacity), Capacity > RoomCapacity.

%%%% Place Constraint %%%% 
% Constraint 1: Non-service undergraduate level courses cannot occupy a classroom longer than 2 hours consecutively
% :- assign(Course, Room, T1, Section), assign(Course, Room, T2, Section), assign(Course, Room, T3, Section),
%    timeslot(T1, Index1), timeslot(T2, Index2), timeslot(T3, Index3),
%    Index2 == Index1+1, Index3 == Index2+1, course(Course, _, "no", "undergraduate", _, _, _, Section).

% Constraint 2.1: One classroom cannot be occupied by more than one course at a time
%:- assign(Course1, Room, Timeslot, _), assign(Course2, Room, Timeslot, _), Course1 != Course2.

% Constraint 2.2: One classroom cannot be occupied by different sections of the same course at the same time
%:- assign(Course, Room, Timeslot, Section1), assign(Course, Room, Timeslot, Section2), Section1 != Section2.

% % Constraint 3: If a non-service undergraduate level course has split into three sections, one hour of lecture must be conducted at BMB1 at least
% :- course(Course, _, "no", "undergraduate", _, _, _, 3), not assign(Course, "bmb_1", _, _).

% % Constraint 4: If a non-service undergraduate level course has split into two sections, all hours must be conducted at BMB1 at least
% :- course(Course, _, "no", "undergraduate", _, _, _, 2), not 2 { assign(Course, "bmb_1", _, _) }.

%%%% Instructor Constraints %%%% 
% An instructor cannot give more than one course at a time
% :- assign(Course1, _, Timeslot, _), assign(Course2, _, Timeslot, _),
   %instructor_course(Instructor, Course1), instructor_course(Instructor, Course2), Course1 != Course2.

% An instructor cannot give a course during their busy hour
%:- assign(Course, _, Timeslot, _), instructor_course(Instructor, Course), busy(Instructor, Timeslot).

% Print out assignments in a human-readable form
#show assign/6.
