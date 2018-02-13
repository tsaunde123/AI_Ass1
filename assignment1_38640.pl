candidate_number(38640).
q1(assignment1:start_position_personal(P)).
q2a(assignment1:new_pos(p(1,1), e, NewPos)).
q2b(109). %file line (line 7 in function)
q3([s,e,w,n]).
q4a([p(1,1), p(1,2), p(1,3), p(1,4), p(2,4), p(3,4), p(4,4), p(3,4), p(3,3), p(2,3), p(2,2), p(3,2), p(4,2), p(4,1), p(3,1), p(2,1)]).
q4b([p(1,1), p(1,2), p(1,3), p(1,4), p(2,4), p(3,4), p(4,4), p(4,3), p(3,3), p(2,3), p(2,2), p(3,2), p(3,1), p(4,1), p(4,2)]).
q4c([p(1,1), p(1,2), p(1,3), p(1,4), p(2,4), p(3,4), p(4,4), p(3,4), p(3,3), p(2,3), p(2,2), p(3,2), p(4,2), p(4,1), p(3,1), p(2,1)]).
q4d([p(1, 1), p(1, 2), p(1, 3), p(1, 4), p(2, 4), p(3, 4), p(4, 4), p(4, 3), p(3, 3), p(2, 3), p(2, 2), p(2, 1), p(3, 1), p(3, 2), p(4, 2), p(4, 1)]).

q5_corner_move() :-
  ailp_start_position(P),
  ailp_show_move(P, p(1,4)),
  ailp_show_move(p(1,4), p(4,4)),
  ailp_show_move(p(4,4), p(4,1)),
  ailp_show_move(p(4,1), P).
