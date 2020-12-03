package ioredis;

typedef OverloadedBlockingListCommand<T, U> = ts.AnyOf15<(arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, arg6:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:T, arg2:T, arg3:T, arg4:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:T, arg2:T, arg3:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:T, arg2:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:T, timeout:Float, cb:Callback<U>) -> Void, (arg1:Array<ts.AnyOf2<Float, T>>, cb:Callback<U>) -> Void, (arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, arg6:T, timeout:Float) -> js.lib.Promise<U>, (arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, timeout:Float) -> js.lib.Promise<U>, (arg1:T, arg2:T, arg3:T, arg4:T, timeout:Float) -> js.lib.Promise<U>, (arg1:T, arg2:T, arg3:T, timeout:Float) -> js.lib.Promise<U>, (arg1:T, arg2:T, timeout:Float) -> js.lib.Promise<U>, (arg1:T, timeout:Float) -> js.lib.Promise<U>, (arg1:Array<ts.AnyOf2<Float, T>>) -> js.lib.Promise<U>, (args:haxe.extern.Rest<ts.AnyOf2<Float, T>>) -> js.lib.Promise<U>>;