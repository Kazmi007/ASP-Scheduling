%Possibility Generation
%assigns sections to proffessors randomly.
1{assigned_section(Name, CourseName, Sec) : course(Code,CourseName,Capacity,Sec)}1 :- instructor(Name,Code). 

%Allocates classrooms and timeslots. 
1{time_slots(CourseName,Name,C,Cap,Capacity,Sec,Time,Index) : classroom(C,Cap), time_mapping(Time,Index)} 1 :- course(Code,CourseName,Capacity,Sec) , instructor(Name,Code), assigned_section(Name,CourseName,Sec).


%---------------------------------------------------------------------------------------------------------------------------------------------------%
%Hard Constraints
%Same section should not be assigned to 2 different professors.
:- assigned_section(Name,CourseName,Sec), assigned_section(Name1,CourseName,Sec), Name1!=Name.

%Course assigned to the classroom should not have Student limit greater than capacity.
:- time_slots(CourseName,Name,C,Cap,Capacity,Sec,Time,Index), Cap < Capacity.

%Different courses should not be assigned to the same classroom at the same time.
:- time_slots(CourseName,_,C,_,_,_,Time,_), time_slots(CourseName1,_,C,_,_,_,Time,_), CourseName != CourseName1.

%A time slot should not be allocated to a professor during his busy hourse.
:- time_slots(CourseName,Name,C,Cap,Capacity,Sec,Time,Index) , busy_hour(Name,Index).
%----------------------------------------------------------------------------------------------------------------------------------------------------%
#show time_slots/8.





