package ioredis;

typedef Cluster = {
	final options : ClusterOptions;
	final status : String;
	function connect():js.lib.Promise<Void>;
	function disconnect():Void;
	function nodes(?role:NodeRole):Array<Redis>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Cluster;
	function setMaxListeners(n:Float):Cluster;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function getBuiltinCommands():Array<String>;
	function createBuiltinCommand(commandName:String):{ };
	function defineCommand(name:String, definition:{ @:optional var numberOfKeys : Float; @:optional var lua : String; }):Void;
	function sendCommand():Void;
	@:overload(function(key:KeyType, start:Float, end:Float, callback:(err:js.lib.Error, res:Float) -> Void):Void { })
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, start:Float, end:Float):js.lib.Promise<Float> { })
	function bitcount(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Null<String>> { })
	function get(key:KeyType, callback:Callback<Null<String>>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<global.Buffer> { })
	function getBuffer(key:KeyType, callback:Callback<global.Buffer>):Void;
	@:overload(function(key:KeyType, value:ValueType_, callback:Callback<String>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, setMode:ts.AnyOf2<String, Array<Dynamic>>, callback:Callback<Null<String>>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:ts.AnyOf2<String, Float>, callback:Callback<String>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:ts.AnyOf2<String, Float>, setMode:ts.AnyOf2<String, Float>, callback:Callback<Null<String>>):Void { })
	function set(key:KeyType, value:ValueType_, ?expiryMode:ts.AnyOf2<String, Array<Dynamic>>, ?time:ts.AnyOf2<String, Float>, ?setMode:ts.AnyOf2<String, Float>):js.lib.Promise<Null<String>>;
	@:overload(function(key:KeyType, value:ValueType_, callback:Callback<global.Buffer>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, setMode:String, callback:Callback<global.Buffer>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:Float, callback:Callback<global.Buffer>):Void { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:ts.AnyOf2<String, Float>, setMode:ts.AnyOf2<String, Float>, callback:Callback<global.Buffer>):Void { })
	function setBuffer(key:KeyType, value:ValueType_, ?expiryMode:ts.AnyOf2<String, Array<Dynamic>>, ?time:ts.AnyOf2<String, Float>, ?setMode:ts.AnyOf2<String, Float>):js.lib.Promise<global.Buffer>;
	@:overload(function(key:KeyType, value:ValueType_):js.lib.Promise<BooleanResponse> { })
	function setnx(key:KeyType, value:ValueType_, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, seconds:Float, value:ValueType_):js.lib.Promise<String> { })
	function setex(key:KeyType, seconds:Float, value:ValueType_, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, milliseconds:Float, value:ValueType_):js.lib.Promise<String> { })
	function psetex(key:KeyType, milliseconds:Float, value:ValueType_, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, value:ValueType_):js.lib.Promise<Float> { })
	function append(key:KeyType, value:ValueType_, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function strlen(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function del(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function unlink(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, callback:Callback<Float>):Void { })
	function exists(keys:haxe.extern.Rest<KeyType>):js.lib.Promise<Float>;
	@:overload(function(key:KeyType, offset:Float, value:ValueType_):js.lib.Promise<Float> { })
	function setbit(key:KeyType, offset:Float, value:ValueType_, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, offset:Float):js.lib.Promise<Float> { })
	function getbit(key:KeyType, offset:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, offset:Float, value:ValueType_):js.lib.Promise<Float> { })
	function setrange(key:KeyType, offset:Float, value:ValueType_, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, start:Float, end:Float):js.lib.Promise<String> { })
	function getrange(key:KeyType, start:Float, end:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, start:Float, end:Float):js.lib.Promise<global.Buffer> { })
	function getrangeBuffer(key:KeyType, start:Float, end:Float, callback:Callback<global.Buffer>):Void;
	@:overload(function(key:KeyType, start:Float, end:Float):js.lib.Promise<String> { })
	function substr(key:KeyType, start:Float, end:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function incr(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function decr(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Array<Null<String>>> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Array<Null<String>>> { })
	dynamic function mget(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Array<Null<String>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function rpush(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, arg5:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<global.Buffer, Array<global.Buffer>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<global.Buffer>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<global.Buffer>):js.lib.Promise<Float> { })
	dynamic function rpushBuffer(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, arg5:global.Buffer, arg6:global.Buffer, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function lpush(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, arg5:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<global.Buffer, Array<global.Buffer>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<global.Buffer>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<global.Buffer>):js.lib.Promise<Float> { })
	dynamic function lpushBuffer(key:KeyType, arg1:global.Buffer, arg2:global.Buffer, arg3:global.Buffer, arg4:global.Buffer, arg5:global.Buffer, arg6:global.Buffer, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function rpushx(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function lpushx(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, direction:String, pivot:String, value:ValueType_):js.lib.Promise<Float> { })
	function linsert(key:KeyType, direction:String, pivot:String, value:ValueType_, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<String> { })
	function rpop(key:KeyType, callback:Callback<String>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<String> { })
	function lpop(key:KeyType, callback:Callback<String>):Void;
	function lpos(key:KeyType, value:ValueType_, ?rank:Float, ?count:Float, ?maxlen:Float):js.lib.Promise<Null<Float>>;
	@:overload(function(key:KeyType):js.lib.Promise<global.Buffer> { })
	function lpopBuffer(key:KeyType, callback:Callback<global.Buffer>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple2<String, String>> { })
	dynamic function brpop(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>, cb:Callback<ts.Tuple2<String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:KeyType, timeout:Float):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple2<String, String>> { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple2<String, String>> { })
	dynamic function blpop(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float, cb:Callback<ts.Tuple2<String, String>>):Void;
	@:overload(function(source:String, destination:String, timeout:Float):js.lib.Promise<String> { })
	function brpoplpush(source:String, destination:String, timeout:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function llen(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, index:Float):js.lib.Promise<String> { })
	function lindex(key:KeyType, index:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, index:Float, value:ValueType_):js.lib.Promise<String> { })
	function lset(key:KeyType, index:Float, value:ValueType_, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float):js.lib.Promise<Array<String>> { })
	function lrange(key:KeyType, start:Float, stop:Float, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float):js.lib.Promise<Array<global.Buffer>> { })
	function lrangeBuffer(key:KeyType, start:Float, stop:Float, callback:Callback<Array<global.Buffer>>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float):js.lib.Promise<String> { })
	function ltrim(key:KeyType, start:Float, stop:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, count:Float, value:ValueType_):js.lib.Promise<Float> { })
	function lrem(key:KeyType, count:Float, value:ValueType_, callback:Callback<Float>):Void;
	@:overload(function(source:String, destination:String):js.lib.Promise<String> { })
	function rpoplpush(source:String, destination:String, callback:Callback<String>):Void;
	@:overload(function(source:String, destination:String):js.lib.Promise<global.Buffer> { })
	function rpoplpushBuffer(source:String, destination:String, callback:Callback<global.Buffer>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function sadd(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function srem(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(source:String, destination:String, member:String):js.lib.Promise<BooleanResponse> { })
	function smove(source:String, destination:String, member:String, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, member:String):js.lib.Promise<BooleanResponse> { })
	function sismember(key:KeyType, member:String, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function scard(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Null<String>> { })
	@:overload(function(key:KeyType, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, count:Float):js.lib.Promise<Array<String>> { })
	function spop(key:KeyType, callback:Callback<Null<String>>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Null<String>> { })
	@:overload(function(key:KeyType, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, count:Float):js.lib.Promise<Array<String>> { })
	function srandmember(key:KeyType, callback:Callback<Null<String>>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Array<String>>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Array<String>> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Array<String>> { })
	dynamic function sinter(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function sinterstore(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Array<String>>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Array<String>> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Array<String>> { })
	dynamic function sunion(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function sunionstore(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Array<String>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Array<String>>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Array<String>> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Array<String>> { })
	dynamic function sdiff(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function sdiffstore(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Array<String>> { })
	function smembers(key:KeyType, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<String, Float>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<String, Float>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<String, Float>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<String, Float>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf4<String, Float, global.Buffer, Array<ts.AnyOf3<String, Float, global.Buffer>>>, cb:Callback<ts.AnyOf2<String, Float>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.AnyOf2<String, Float>> { })
	@:overload(function(key:KeyType, arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.AnyOf2<String, Float>> { })
	dynamic function zadd(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, arg6:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<String, Float>>):Void;
	@:overload(function(key:KeyType, score1:Float, member1:global.Buffer):js.lib.Promise<ts.AnyOf2<String, Float>> { })
	function zaddBuffer(key:KeyType, score1:Float, member1:global.Buffer, callback:Callback<ts.AnyOf2<String, Float>>):Void;
	@:overload(function(key:KeyType, increment:Float, member:String):js.lib.Promise<String> { })
	function zincrby(key:KeyType, increment:Float, member:String, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, ?count:Float):js.lib.Promise<Array<String>> { })
	function zpopmin(key:KeyType, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, ?count:Float):js.lib.Promise<Array<String>> { })
	function zpopmax(key:KeyType, callback:Callback<Array<String>>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	dynamic function bzpopmin(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>, cb:Callback<ts.Tuple3<String, String, String>>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, arg2:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:KeyType, timeout:Float):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.Tuple3<String, String, String>> { })
	dynamic function bzpopmax(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, timeout:Float, cb:Callback<ts.Tuple3<String, String, String>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function zrem(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>):js.lib.Promise<Float> { })
	function zremrangebyscore(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float):js.lib.Promise<Float> { })
	function zremrangebyrank(key:KeyType, start:Float, stop:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, min:String, max:String, callback:Callback<Float>):Void { })
	function zremrangebylex(key:KeyType, min:String, max:String):js.lib.Promise<Float>;
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf4<String, Float, global.Buffer, Array<ts.AnyOf3<String, Float, global.Buffer>>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<Float> { })
	dynamic function zunionstore(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, arg6:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf4<String, Float, global.Buffer, Array<ts.AnyOf3<String, Float, global.Buffer>>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<Float> { })
	dynamic function zinterstore(key:KeyType, arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, arg6:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, start:Float, stop:Float, ?withScores:String):js.lib.Promise<Array<String>> { })
	function zrange(key:KeyType, start:Float, stop:Float, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, start:Float, stop:Float, ?withScores:String):js.lib.Promise<Array<global.Buffer>> { })
	function zrangeBuffer(key:KeyType, start:Float, stop:Float, callback:Callback<Array<global.Buffer>>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, start:Float, stop:Float, ?withScores:String):js.lib.Promise<Array<String>> { })
	function zrevrange(key:KeyType, start:Float, stop:Float, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, start:Float, stop:Float, ?withScores:String):js.lib.Promise<Array<global.Buffer>> { })
	function zrevrangeBuffer(key:KeyType, start:Float, stop:Float, callback:Callback<Array<global.Buffer>>):Void;
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	function zrangebyscore(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, ?withScores:String):js.lib.Promise<Array<String>>;
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	function zrangebyscoreBuffer(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, ?withScores:String):js.lib.Promise<Array<global.Buffer>>;
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	function zrevrangebyscore(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, ?withScores:String):js.lib.Promise<Array<String>>;
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, withScores:String, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	function zrevrangebyscoreBuffer(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, ?withScores:String):js.lib.Promise<Array<global.Buffer>>;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, min:String, max:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	function zrangebylex(key:KeyType, min:String, max:String):js.lib.Promise<Array<String>>;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, min:String, max:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	function zrangebylexBuffer(key:KeyType, min:String, max:String):js.lib.Promise<Array<global.Buffer>>;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, min:String, max:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, callback:Callback<Array<String>>):Void { })
	function zrevrangebylex(key:KeyType, min:String, max:String):js.lib.Promise<Array<String>>;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(key:KeyType, min:String, max:String, callback:Callback<Array<global.Buffer>>):Void { })
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, callback:Callback<Array<global.Buffer>>):Void { })
	function zrevrangebylexBuffer(key:KeyType, min:String, max:String):js.lib.Promise<Array<global.Buffer>>;
	@:overload(function(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>):js.lib.Promise<Float> { })
	function zcount(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function zcard(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, member:String):js.lib.Promise<String> { })
	function zscore(key:KeyType, member:String, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, member:String):js.lib.Promise<Null<Float>> { })
	function zrank(key:KeyType, member:String, callback:Callback<Null<Float>>):Void;
	@:overload(function(key:KeyType, member:String):js.lib.Promise<Null<Float>> { })
	function zrevrank(key:KeyType, member:String, callback:Callback<Null<Float>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	dynamic function hset(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, field:String, value:ValueType_):js.lib.Promise<global.Buffer> { })
	function hsetBuffer(key:KeyType, field:String, value:ValueType_, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, field:String, value:ValueType_):js.lib.Promise<BooleanResponse> { })
	function hsetnx(key:KeyType, field:String, value:ValueType_, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, field:String):js.lib.Promise<Null<String>> { })
	function hget(key:KeyType, field:String, callback:Callback<Null<String>>):Void;
	@:overload(function(key:KeyType, field:String):js.lib.Promise<global.Buffer> { })
	function hgetBuffer(key:KeyType, field:String, callback:Callback<global.Buffer>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>):js.lib.Promise<String> { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	dynamic function hmset(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Array<Null<String>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<Array<Null<String>>> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<Array<Null<String>>> { })
	dynamic function hmget(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Array<Null<String>>>):Void;
	@:overload(function(key:KeyType, field:String):js.lib.Promise<Float> { })
	function hstrlen(key:KeyType, field:String, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, field:String, increment:Float):js.lib.Promise<Float> { })
	function hincrby(key:KeyType, field:String, increment:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, field:String, increment:Float):js.lib.Promise<Float> { })
	function hincrbyfloat(key:KeyType, field:String, increment:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function hdel(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function hlen(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Array<String>> { })
	function hkeys(key:KeyType, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Array<String>> { })
	function hvals(key:KeyType, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<{ }> { })
	function hgetall(key:KeyType, callback:Callback<{ }>):Void;
	@:overload(function(key:KeyType, field:String):js.lib.Promise<BooleanResponse> { })
	function hexists(key:KeyType, field:String, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, longitude:Float, latitude:Float, member:String):js.lib.Promise<Float> { })
	function geoadd(key:KeyType, longitude:Float, latitude:Float, member:String, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, member1:String, member2:String, unit:String):js.lib.Promise<Null<String>> { })
	function geodist(key:KeyType, member1:String, member2:String, unit:String, callback:Callback<Null<String>>):Void;
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<String>):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, arg1:Array<String>):js.lib.Promise<Array<String>> { })
	dynamic function geohash(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<String>):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, arg1:Array<String>):js.lib.Promise<Array<String>> { })
	dynamic function geopos(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, longitude:Float, latitude:Float, radius:Float, unit:String, ?sort:String):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, longitude:Float, latitude:Float, radius:Float, unit:String, count:String, countValue:Float, ?sort:String):js.lib.Promise<Array<String>> { })
	function georadius(key:KeyType, longitude:Float, latitude:Float, radius:Float, unit:String, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, member:String, radius:Float, unit:String, count:String, countValue:Float, callback:Callback<Array<String>>):Void { })
	@:overload(function(key:KeyType, member:String, radius:Float, unit:String):js.lib.Promise<Array<String>> { })
	@:overload(function(key:KeyType, member:String, radius:Float, unit:String, count:String, countValue:Float):js.lib.Promise<Array<String>> { })
	function georadiusbymember(key:KeyType, member:String, radius:Float, unit:String, callback:Callback<Array<String>>):Void;
	@:overload(function(key:KeyType, increment:Float):js.lib.Promise<Float> { })
	function incrby(key:KeyType, increment:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, increment:Float):js.lib.Promise<Float> { })
	function incrbyfloat(key:KeyType, increment:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, decrement:Float):js.lib.Promise<Float> { })
	function decrby(key:KeyType, decrement:Float, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType, value:ValueType_):js.lib.Promise<Null<String>> { })
	function getset(key:KeyType, value:ValueType_, callback:Callback<Null<String>>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>, cb:Callback<String>):Void { })
	@:overload(function(data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>):js.lib.Promise<String> { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	dynamic function mset(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<BooleanResponse>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<BooleanResponse>):Void { })
	@:overload(function(data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>, cb:Callback<BooleanResponse>):Void { })
	@:overload(function(data:ts.AnyOf3<Array<ValueType_>, js.lib.Map<String, ValueType_>, { }>):js.lib.Promise<BooleanResponse> { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<BooleanResponse> { })
	dynamic function msetnx(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<BooleanResponse>):Void;
	function memory(argument:String, key:KeyType, ?callback:Callback<Float>):js.lib.Promise<Float>;
	@:overload(function():js.lib.Promise<String> { })
	function randomkey(callback:Callback<String>):Void;
	@:overload(function(index:Float):js.lib.Promise<String> { })
	function select(index:Float, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, db:String):js.lib.Promise<BooleanResponse> { })
	function move(key:KeyType, db:String, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, newkey:KeyType):js.lib.Promise<String> { })
	function rename(key:KeyType, newkey:KeyType, callback:Callback<String>):Void;
	@:overload(function(key:KeyType, newkey:KeyType):js.lib.Promise<BooleanResponse> { })
	function renamenx(key:KeyType, newkey:KeyType, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, seconds:Float):js.lib.Promise<BooleanResponse> { })
	function expire(key:KeyType, seconds:Float, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, milliseconds:Float):js.lib.Promise<BooleanResponse> { })
	function pexpire(key:KeyType, milliseconds:Float, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, timestamp:Float):js.lib.Promise<BooleanResponse> { })
	function expireat(key:KeyType, timestamp:Float, callback:Callback<BooleanResponse>):Void;
	@:overload(function(key:KeyType, millisecondsTimestamp:Float):js.lib.Promise<BooleanResponse> { })
	function pexpireat(key:KeyType, millisecondsTimestamp:Float, callback:Callback<BooleanResponse>):Void;
	@:overload(function(pattern:String):js.lib.Promise<Array<String>> { })
	function keys(pattern:String, callback:Callback<Array<String>>):Void;
	@:overload(function():js.lib.Promise<Float> { })
	function dbsize(callback:Callback<Float>):Void;
	@:overload(function(password:String, callback:Callback<String>):Void { })
	@:overload(function(username:String, password:String):js.lib.Promise<String> { })
	@:overload(function(password:String):js.lib.Promise<String> { })
	function auth(username:String, password:String, callback:Callback<String>):Void;
	@:overload(function(message:String, callback:Callback<String>):Void { })
	@:overload(function(?message:String):js.lib.Promise<String> { })
	function ping(callback:Callback<String>):Void;
	@:overload(function(message:String):js.lib.Promise<String> { })
	function echo(message:String, callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function save(callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function bgsave(callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function bgrewriteaof(callback:Callback<String>):Void;
	@:overload(function(save:String):js.lib.Promise<Any> { })
	function shutdown(save:String, callback:Callback<Any>):Void;
	@:overload(function():js.lib.Promise<Float> { })
	function lastsave(callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<String> { })
	function type(key:KeyType, callback:Callback<String>):Void;
	@:overload(function(options:{ var pipeline : Bool; }):js.lib.Promise<String> { })
	function multi(?commands:Array<Array<String>>, ?options:MultiOptions):Pipeline;
	@:overload(function():js.lib.Promise<Array<ts.Tuple2<Null<js.lib.Error>, String>>> { })
	function exec(callback:Callback<Array<ts.Tuple2<Null<js.lib.Error>, String>>>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function discard(callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<Dynamic> { })
	function sync(callback:Callback<Dynamic>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function flushdb(callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function flushall(callback:Callback<String>):Void;
	@:overload(function(arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void { })
	@:overload(function(arg1:ts.AnyOf4<String, Float, global.Buffer, Array<ts.AnyOf3<String, Float, global.Buffer>>>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.AnyOf2<Float, Array<String>>> { })
	@:overload(function(arg1:Array<ts.AnyOf3<String, Float, global.Buffer>>):js.lib.Promise<ts.AnyOf2<Float, Array<String>>> { })
	dynamic function sort(arg1:ts.AnyOf3<String, Float, global.Buffer>, arg2:ts.AnyOf3<String, Float, global.Buffer>, arg3:ts.AnyOf3<String, Float, global.Buffer>, arg4:ts.AnyOf3<String, Float, global.Buffer>, arg5:ts.AnyOf3<String, Float, global.Buffer>, arg6:ts.AnyOf3<String, Float, global.Buffer>, cb:Callback<ts.AnyOf2<Float, Array<String>>>):Void;
	@:overload(function(section:String, callback:Callback<String>):Void { })
	@:overload(function(?section:String):js.lib.Promise<String> { })
	function info(callback:Callback<String>):Void;
	@:overload(function():js.lib.Promise<ts.Tuple2<String, String>> { })
	function time(callback:Callback<ts.Tuple2<String, String>>):Void;
	@:overload(function():js.lib.Promise<node.events.EventEmitter> { })
	function monitor(callback:Callback<node.events.EventEmitter>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function ttl(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<Float> { })
	function pttl(key:KeyType, callback:Callback<Float>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<BooleanResponse> { })
	function persist(key:KeyType, callback:Callback<BooleanResponse>):Void;
	@:overload(function(host:String, port:Float):js.lib.Promise<String> { })
	function slaveof(host:String, port:Float, callback:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function debug(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(op:String, cfg:String, callback:Callback<Array<String>>):Void { })
	@:overload(function(op:String):js.lib.Promise<String> { })
	@:overload(function(op:String, callback:Callback<String>):Void { })
	@:overload(function(op:String, key:String, value:ValueType_):js.lib.Promise<String> { })
	@:overload(function(op:String, key:String, value:ValueType_, callback:Callback<String>):Void { })
	function config(op:String, cfg:String):js.lib.Promise<Array<String>>;
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function subscribe(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function unsubscribe(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function psubscribe(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function punsubscribe(arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(channel:String, message:String):js.lib.Promise<Float> { })
	function publish(channel:String, message:String, callback:Callback<Float>):Void;
	function publishBuffer(channel:String, message:global.Buffer):js.lib.Promise<Float>;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<String>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<String>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<String>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<String>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<String> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<String> { })
	dynamic function watch(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<String>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function unwatch(callback:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function cluster(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<String> { })
	dynamic function restore(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<String> { })
	dynamic function migrate(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(key:KeyType):js.lib.Promise<String> { })
	function dump(key:KeyType, callback:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function object(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function client(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(script:String, numKeys:Float, arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(args:Array<ValueType_>, ?callback:Callback<Dynamic>):Dynamic { })
	dynamic function eval(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(script:String, numKeys:Float, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(script:String, numKeys:Float, arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(args:Array<ValueType_>, ?callback:Callback<Dynamic>):Dynamic { })
	dynamic function evalsha(script:String, numKeys:Float, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function script(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function():js.lib.Promise<String> { })
	function quit(callback:Callback<String>):Void;
	@:overload(function(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String, callback:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float, callback:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String, countOption:String, count:Float):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String, countOption:String, count:Float, callback:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float, matchOption:String, pattern:String):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float, matchOption:String, pattern:String, callback:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	function scan(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String):js.lib.Promise<ts.Tuple2<String, Array<String>>>;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	dynamic function sscan(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	dynamic function hscan(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<ts.Tuple2<String, Array<String>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<ts.Tuple2<String, Array<String>>> { })
	dynamic function zscan(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<ts.Tuple2<String, Array<String>>>):Void;
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:KeyType, arg2:KeyType, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<KeyType>):js.lib.Promise<String> { })
	@:overload(function(key:KeyType, arg1:Array<KeyType>):js.lib.Promise<String> { })
	dynamic function pfmerge(key:KeyType, arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<String>):Void;
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function pfadd(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, arg3:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:KeyType, arg2:KeyType, cb:Callback<Float>):Void { })
	@:overload(function(arg1:ts.AnyOf3<String, global.Buffer, Array<KeyType>>, cb:Callback<Float>):Void { })
	@:overload(function(args:haxe.extern.Rest<KeyType>):js.lib.Promise<Float> { })
	@:overload(function(arg1:Array<KeyType>):js.lib.Promise<Float> { })
	dynamic function pfcount(arg1:KeyType, arg2:KeyType, arg3:KeyType, arg4:KeyType, arg5:KeyType, arg6:KeyType, cb:Callback<Float>):Void;
	function pipeline(?commands:Array<Array<String>>):Pipeline;
	function scanStream(?options:ScanStreamOption):node.stream.Readable;
	function sscanStream(key:KeyType, ?options:ScanStreamOption):node.stream.Readable;
	function hscanStream(key:KeyType, ?options:ScanStreamOption):node.stream.Readable;
	function zscanStream(key:KeyType, ?options:ScanStreamOption):node.stream.Readable;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function xack(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<String>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<String> { })
	dynamic function xadd(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	dynamic function xclaim(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void;
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, arg3:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:String, arg2:String, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf2<String, Array<String>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<String>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<String>):js.lib.Promise<Float> { })
	dynamic function xdel(key:KeyType, arg1:String, arg2:String, arg3:String, arg4:String, arg5:String, arg6:String, cb:Callback<Float>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<String>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<String>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<String> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<String> { })
	dynamic function xgroup(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<String>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function xinfo(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(key:KeyType, callback:Callback<Float>):Void { })
	function xlen(key:KeyType):js.lib.Promise<Float>;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Dynamic>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Dynamic>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Dynamic> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Dynamic> { })
	dynamic function xpending(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Dynamic>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	dynamic function xrange(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void;
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(arg1:ValueType_, arg2:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	@:overload(function(arg1:Array<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	dynamic function xread(arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	dynamic function xreadgroup(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Array<ts.Tuple2<String, Array<String>>>> { })
	dynamic function xrevrange(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Array<ts.Tuple2<String, Array<String>>>>):Void;
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ValueType_, arg2:ValueType_, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, arg1:ts.AnyOf5<String, Float, global.Buffer, Array<Dynamic>, Array<ValueType_>>, cb:Callback<Float>):Void { })
	@:overload(function(key:KeyType, args:haxe.extern.Rest<ValueType_>):js.lib.Promise<Float> { })
	@:overload(function(key:KeyType, arg1:Array<ValueType_>):js.lib.Promise<Float> { })
	dynamic function xtrim(key:KeyType, arg1:ValueType_, arg2:ValueType_, arg3:ValueType_, arg4:ValueType_, arg5:ValueType_, arg6:ValueType_, cb:Callback<Float>):Void;
};