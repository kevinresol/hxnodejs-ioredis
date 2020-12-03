package ioredis;

typedef PreferredSlaves = ts.AnyOf3<(slaves:Array<AddressFromResponse>) -> Null<AddressFromResponse>, Array<{
	var port : String;
	var ip : String;
	@:optional
	var prio : Float;
}>, {
	var port : String;
	var ip : String;
	@:optional
	var prio : Float;
}>;