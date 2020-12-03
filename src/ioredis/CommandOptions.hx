package ioredis;

typedef CommandOptions = {
	@:optional
	var replyEncoding : String;
	@:optional
	var errorStack : String;
	@:optional
	var keyPrefix : String;
};