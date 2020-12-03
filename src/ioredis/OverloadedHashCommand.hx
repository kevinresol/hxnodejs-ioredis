package ioredis;

typedef OverloadedHashCommand<T, U> = ts.AnyOf6<(arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, arg6:T, cb:Callback<U>) -> Void, (arg1:T, arg2:T, arg3:T, arg4:T, cb:Callback<U>) -> Void, (arg1:T, arg2:T, cb:Callback<U>) -> Void, (data:ts.AnyOf3<Array<T>, { }, js.lib.Map<String, T>>, cb:Callback<U>) -> Void, (data:ts.AnyOf3<Array<T>, js.lib.Map<String, T>, { }>) -> js.lib.Promise<U>, (args:haxe.extern.Rest<T>) -> js.lib.Promise<U>>;