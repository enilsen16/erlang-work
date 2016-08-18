-module(sort).
-export([mergesort/1]).

mergesort([]) -> [];
mergesort([L]) -> [L];
mergesort(L) ->
  {L1, L2} = lists:split(trunc(length(L)/2), L),
  mergesort(L1, L2).

mergesort(L1, []) -> L1;
mergesort([], L2) -> L2;
mergesort([H1|T1], [H2|T2]) ->
  if
    H1 < H2 ->
      [H1 | mergesort(T1, [H2|T2])];
    true ->
      [H2 | mergesort([H1|T1], T2)]
  end.
