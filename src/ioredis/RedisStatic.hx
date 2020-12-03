package ioredis;

typedef RedisStatic = {
	@:overload(function(?host:String, ?options:RedisOptions):Redis { })
	@:overload(function(?options:RedisOptions):Redis { })
	@:selfCall
	function call(?port:Float, ?host:String, ?options:RedisOptions):Redis;
	var Cluster : ClusterStatic;
	var Command : {
		var prototype : Command_;
		function setArgumentTransformer(name:String, fn:(args:Array<ValueType_>) -> Array<ValueType_>):Void;
		function setReplyTransformer(name:String, fn:(result:Dynamic) -> Dynamic):Void;
	};
};