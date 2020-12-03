@:jsRequire("ioredis") extern class Ioredis {
	@:overload(function(?host:String, ?options:ioredis.RedisOptions):ioredis.Redis { })
	@:overload(function(?options:ioredis.RedisOptions):ioredis.Redis { })
	function new(?port:Float, ?host:String, ?options:ioredis.RedisOptions);
	static var value(get, never) : ioredis.RedisStatic;
	static inline function get_value():ioredis.RedisStatic return cast Ioredis;
	@:overload(function(?host:String, ?options:ioredis.RedisOptions):ioredis.Redis { })
	@:overload(function(?options:ioredis.RedisOptions):ioredis.Redis { })
	@:selfCall
	static function call(?port:Float, ?host:String, ?options:ioredis.RedisOptions):ioredis.Redis;
	static var Cluster : ioredis.ClusterStatic;
	static var Command : {
		var prototype : ioredis.Command_;
		function setArgumentTransformer(name:String, fn:(args:Array<ioredis.ValueType_>) -> Array<ioredis.ValueType_>):Void;
		function setReplyTransformer(name:String, fn:(result:Dynamic) -> Dynamic):Void;
	};
}