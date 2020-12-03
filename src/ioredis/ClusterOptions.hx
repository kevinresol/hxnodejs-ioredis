package ioredis;

typedef ClusterOptions = {
	@:optional
	function clusterRetryStrategy(times:Float, ?reason:js.lib.Error):Null<Float>;
	@:optional
	var enableOfflineQueue : Bool;
	@:optional
	var enableReadyCheck : Bool;
	@:optional
	var scaleReads : String;
	@:optional
	var maxRedirections : Float;
	@:optional
	var retryDelayOnFailover : Float;
	@:optional
	var retryDelayOnClusterDown : Float;
	@:optional
	var retryDelayOnTryAgain : Float;
	@:optional
	var slotsRefreshTimeout : Float;
	@:optional
	var slotsRefreshInterval : Float;
	@:optional
	var redisOptions : RedisOptions;
	@:optional
	var lazyConnect : Bool;
	@:optional
	dynamic function dnsLookup(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
	@:optional
	var natMap : NatMap;
};