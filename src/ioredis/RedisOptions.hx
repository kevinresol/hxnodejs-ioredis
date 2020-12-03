package ioredis;

typedef RedisOptions = {
	@:optional
	var port : Float;
	@:optional
	var host : String;
	/**
		4 (IPv4) or 6 (IPv6), Defaults to 4.
	**/
	@:optional
	var family : Float;
	/**
		Local domain socket path. If set the port, host and family will be ignored.
	**/
	@:optional
	var path : String;
	/**
		TCP KeepAlive on the socket with a X ms delay before start. Set to a non-number value to disable keepAlive.
	**/
	@:optional
	var keepAlive : Float;
	@:optional
	var connectionName : String;
	/**
		If set, client will send AUTH command with the value of this option as the first argument when connected. The `password` option must be set too. Username should only be set for Redis >=6.
	**/
	@:optional
	var username : String;
	/**
		If set, client will send AUTH command with the value of this option when connected.
	**/
	@:optional
	var password : String;
	/**
		Database index to use.
	**/
	@:optional
	var db : Float;
	/**
		When a connection is established to the Redis server, the server might still be loading
		the database from disk. While loading, the server not respond to any commands.
		To work around this, when this option is true, ioredis will check the status of the Redis server,
		and when the Redis server is able to process commands, a ready event will be emitted.
	**/
	@:optional
	var enableReadyCheck : Bool;
	@:optional
	var keyPrefix : String;
	/**
		When the return value isn't a number, ioredis will stop trying to reconnect.
		Fixed in: https://github.com/DefinitelyTyped/DefinitelyTyped/pull/15858
	**/
	@:optional
	function retryStrategy(times:Float):Null<ts.AnyOf2<Float, Void>>;
	/**
		By default, all pending commands will be flushed with an error every
		20 retry attempts. That makes sure commands won't wait forever when
		the connection is down. You can change this behavior by setting
		`maxRetriesPerRequest`.
		
		Set maxRetriesPerRequest to `null` to disable this behavior, and
		every command will wait forever until the connection is alive again
		(which is the default behavior before ioredis v4).
	**/
	@:optional
	var maxRetriesPerRequest : Float;
	/**
		1/true means reconnect, 2 means reconnect and resend failed command. Returning false will ignore
		the error and do nothing.
	**/
	@:optional
	function reconnectOnError(error:js.lib.Error):ts.AnyOf2<Bool, Int>;
	/**
		By default, if there is no active connection to the Redis server, commands are added to a queue
		and are executed once the connection is "ready" (when enableReadyCheck is true, "ready" means
		the Redis server has loaded the database from disk, otherwise means the connection to the Redis
		server has been established). If this option is false, when execute the command when the connection
		isn't ready, an error will be returned.
	**/
	@:optional
	var enableOfflineQueue : Bool;
	/**
		The milliseconds before a timeout occurs during the initial connection to the Redis server.
		default: 10000.
	**/
	@:optional
	var connectTimeout : Float;
	/**
		After reconnected, if the previous connection was in the subscriber mode, client will auto re-subscribe these channels.
		default: true.
	**/
	@:optional
	var autoResubscribe : Bool;
	/**
		If true, client will resend unfulfilled commands(e.g. block commands) in the previous connection when reconnected.
		default: true.
	**/
	@:optional
	var autoResendUnfulfilledCommands : Bool;
	@:optional
	var lazyConnect : Bool;
	@:optional
	var tls : node.tls.ConnectionOptions;
	/**
		default: "master".
	**/
	@:optional
	var role : String;
	/**
		default: null.
	**/
	@:optional
	var name : String;
	@:optional
	var sentinelUsername : String;
	@:optional
	var sentinelPassword : String;
	@:optional
	var sentinels : Array<{
		var host : String;
		var port : Float;
	}>;
	/**
		If `sentinelRetryStrategy` returns a valid delay time, ioredis will try to reconnect from scratch.
		default: function(times) { return Math.min(times * 10, 1000); }
	**/
	@:optional
	function sentinelRetryStrategy(times:Float):Null<ts.AnyOf2<Float, Void>>;
	/**
		Can be used to prefer a particular slave or set of slaves based on priority.
	**/
	@:optional
	var preferredSlaves : PreferredSlaves;
	/**
		Whether to support the `tls` option when connecting to Redis via sentinel mode.
		default: false.
	**/
	@:optional
	var enableTLSForSentinelMode : Bool;
	@:optional
	var sentinelTLS : SecureContextOptions;
	/**
		NAT map for sentinel connector.
		default: null.
	**/
	@:optional
	var natMap : NatMap;
	/**
		Update the given `sentinels` list with new IP addresses when communicating with existing sentinels.
		default: true.
	**/
	@:optional
	var updateSentinels : Bool;
	/**
		Enable READONLY mode for the connection. Only available for cluster mode.
		default: false.
	**/
	@:optional
	var readOnly : Bool;
	/**
		If you are using the hiredis parser, it's highly recommended to enable this option.
		Create another instance with dropBufferSupport disabled for other commands that you want to return binary instead of string
	**/
	@:optional
	var dropBufferSupport : Bool;
	/**
		Whether to show a friendly error stack. Will decrease the performance significantly.
	**/
	@:optional
	var showFriendlyErrorStack : Bool;
	/**
		When enabled, all commands issued during an event loop iteration are automatically wrapped in a
		pipeline and sent to the server at the same time. This can improve performance by 30-50%.
		default: false.
	**/
	@:optional
	var enableAutoPipelining : Bool;
};