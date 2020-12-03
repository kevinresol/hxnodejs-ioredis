package ioredis;

typedef AddressFromResponse = {
	var port : String;
	var ip : String;
	@:optional
	var flags : String;
};