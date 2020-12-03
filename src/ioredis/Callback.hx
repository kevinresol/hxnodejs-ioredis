package ioredis;

typedef Callback<T> = (err:Null<js.lib.Error>, res:T) -> Void;