# reminder

This is clone reaminder application from [learnyousomeerlang.com](https://learnyousomeerlang.com/).

## Compile

```bash
erl -make
```

## Running

Server:
```bash
erl -noinput -noshell -pa $(pwd)/ebin -s module start
```

Client:
```bash
erl -noinput -noshell -pa $(pwd)/ebin -s module start
```

Console:
```erl
> c('src/evserv'), c('src/sup'), c('src/clients').
> SupPid = sup:start(evserv, []).
> spawn(clients, start, [evserv, {"Hey there2", "test", {{2019,12,5},{13,2,30}}}, 60]).
> spawn(clients, start, [evserv, {"Hey there", "test", {{2019,12,5},{13,2,20}}}, 60]).
```