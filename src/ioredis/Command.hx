package ioredis;

typedef Command = {
	var prototype : Command_;
	function setArgumentTransformer(name:String, fn:(args:Array<ValueType_>) -> Array<ValueType_>):Void;
	function setReplyTransformer(name:String, fn:(result:Dynamic) -> Dynamic):Void;
};