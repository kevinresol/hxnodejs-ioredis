package ioredis;

typedef ScanStreamOption = {
	@:optional
	var match : String;
	@:optional
	var count : Float;
};