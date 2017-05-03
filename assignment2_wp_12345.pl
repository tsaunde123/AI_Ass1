% candidate_number(12345).

% Find hidden identity by repeatedly calling agent_ask_oracle(oscar,o(1),link,L)
% find_identity(-A)
find_identity(A):-
  ( part(2) -> find_identity_2(A)
  ; part(3) -> find_identity_3(A)
  ; part(4) -> find_identity_4(A)
  ).

find_identity_2(A):-
  A='Not yet implemented'.

find_identity_3(A):-
  A='Not yet implemented'.

find_identity_4(A):-
  A='Not yet implemented'.
