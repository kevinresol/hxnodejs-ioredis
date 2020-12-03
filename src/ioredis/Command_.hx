package ioredis;

@jsInaccessible extern class Command_ {
	function new(name:String, args:Array<ValueType_>, ?opts:CommandOptions, ?callback:(err:Dynamic, result:Dynamic) -> Void);
	var isCustomCommand : Bool;
	var args : Array<ValueType_>;
	function getSlot():Null<Float>;
	function getKeys():Array<KeyType>;
	static var prototype : Command_;
	static function setArgumentTransformer(name:String, fn:(args:Array<ValueType_>) -> Array<ValueType_>):Void;
	static function setReplyTransformer(name:String, fn:(result:Dynamic) -> Dynamic):Void;
}