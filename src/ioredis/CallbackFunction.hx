package ioredis;

typedef CallbackFunction<T> = ts.AnyOf3<() -> Void, (err:global.nodejs.ErrnoException) -> Void, (err:global.nodejs.ErrnoException, result:T) -> Void>;