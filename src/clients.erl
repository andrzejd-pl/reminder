-module(clients).
-compile(export_all).

start(Mod, {Name, Description, TimeOut}, Sleep) -> 
    Mod:subscribe(self()),
    Mod:add_event(Name, Description, TimeOut),
    List = Mod:listen(Sleep),
    even_print(List).

even_print([])-> [];
even_print([H|T]) when H rem 2 /= 0 ->
    even_print(T);
even_print([H|T]) ->
    io:format("Process ~p: ~p~n", [self(),H]),
    [H|even_print(T)].
