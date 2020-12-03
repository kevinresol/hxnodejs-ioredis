package ioredis;

typedef OverloadedEvalCommand<T, U> = ts.AnyOf10<(script:String, numKeys:Float, arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, arg6:T, cb:Callback<U>) -> Void, (script:String, numKeys:Float, arg1:T, arg2:T, arg3:T, arg4:T, arg5:T, cb:Callback<U>) -> Void, (script:String, numKeys:Float, arg1:T, arg2:T, arg3:T, arg4:T, cb:Callback<U>) -> Void, (script:String, numKeys:Float, arg1:T, arg2:T, arg3:T, cb:Callback<U>) -> Void, (script:String, numKeys:Float, arg1:T, arg2:T, cb:Callback<U>) -> Void, (script:String, numKeys:Float, arg1:ts.AnyOf2<Array<T>, T>, cb:Callback<U>) -> Void, (script:String, numKeys:Float, args:haxe.extern.Rest<T>) -> js.lib.Promise<U>, (script:String, numKeys:Float, arg1:Array<T>) -> js.lib.Promise<U>, (args:Array<ValueType_>) -> Dynamic, (args:Array<ValueType_>, callback:Callback<Dynamic>) -> Dynamic>;