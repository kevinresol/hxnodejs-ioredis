package ioredis;

typedef Pipeline = {
	final redis : ts.AnyOf2<Redis, Cluster>;
	final isCluster : Bool;
	final options : ts.AnyOf2<RedisOptions, ClusterOptions>;
	final length : Float;
	@:overload(function(key:KeyType, start:Float, end:Float, ?callback:Callback<Float>):Pipeline { })
	function bitcount(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function get(key:KeyType, ?callback:Callback<String>):Pipeline;
	function getBuffer(key:KeyType, ?callback:Callback<global.Buffer>):Pipeline;
	@:overload(function(key:KeyType, value:ValueType_, setMode:String, ?callback:Callback<String>):Pipeline { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:Float, ?callback:Callback<String>):Pipeline { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:Float, setMode:String, ?callback:Callback<String>):Pipeline { })
	function set(key:KeyType, value:ValueType_, ?callback:Callback<String>):Pipeline;
	@:overload(function(key:KeyType, value:ValueType_, setMode:String, ?callback:Callback<global.Buffer>):Pipeline { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:Float, ?callback:Callback<global.Buffer>):Pipeline { })
	@:overload(function(key:KeyType, value:ValueType_, expiryMode:String, time:Float, setMode:String, ?callback:Callback<global.Buffer>):Pipeline { })
	function setBuffer(key:KeyType, value:ValueType_, ?callback:Callback<global.Buffer>):Pipeline;
	function setnx(key:KeyType, value:ValueType_, ?callback:Callback<BooleanResponse>):Pipeline;
	function setex(key:KeyType, seconds:Float, value:ValueType_, ?callback:Callback<String>):Pipeline;
	function psetex(key:KeyType, milliseconds:Float, value:ValueType_, ?callback:Callback<String>):Pipeline;
	function append(key:KeyType, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function strlen(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function del(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function unlink(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function exists(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function setbit(key:KeyType, offset:Float, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function getbit(key:KeyType, offset:Float, ?callback:Callback<Float>):Pipeline;
	function setrange(key:KeyType, offset:Float, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function getrange(key:KeyType, start:Float, end:Float, ?callback:Callback<String>):Pipeline;
	function getrangeBuffer(key:KeyType, start:Float, end:Float, ?callback:Callback<global.Buffer>):Pipeline;
	function substr(key:KeyType, start:Float, end:Float, ?callback:Callback<String>):Pipeline;
	function incr(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function decr(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function mget(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function rpush(key:KeyType, values:haxe.extern.Rest<ValueType_>):Pipeline;
	function rpushBuffer(key:String, values:haxe.extern.Rest<global.Buffer>):Pipeline;
	function lpush(key:KeyType, values:haxe.extern.Rest<ValueType_>):Pipeline;
	function rpushx(key:KeyType, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function lpushx(key:KeyType, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function linsert(key:KeyType, direction:String, pivot:String, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function rpop(key:KeyType, ?callback:Callback<String>):Pipeline;
	function lpop(key:KeyType, ?callback:Callback<String>):Pipeline;
	function lpopBuffer(key:KeyType, ?callback:Callback<global.Buffer>):Pipeline;
	function brpop(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function blpop(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function brpoplpush(source:String, destination:String, timeout:Float, ?callback:Callback<String>):Pipeline;
	function llen(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function lindex(key:KeyType, index:Float, ?callback:Callback<String>):Pipeline;
	function lset(key:KeyType, index:Float, value:ValueType_, ?callback:Callback<String>):Pipeline;
	function lrange(key:KeyType, start:Float, stop:Float, ?callback:Callback<Array<String>>):Pipeline;
	function lrangeBuffer(key:KeyType, start:Float, stop:Float, ?callback:Callback<Array<global.Buffer>>):Pipeline;
	function ltrim(key:KeyType, start:Float, stop:Float, ?callback:Callback<String>):Pipeline;
	function lrem(key:KeyType, count:Float, value:ValueType_, ?callback:Callback<Float>):Pipeline;
	function rpoplpush(source:String, destination:String, ?callback:Callback<String>):Pipeline;
	function sadd(key:KeyType, members:haxe.extern.Rest<ValueType_>):Pipeline;
	function srem(key:KeyType, members:haxe.extern.Rest<ValueType_>):Pipeline;
	function smove(source:String, destination:String, member:String, ?callback:Callback<String>):Pipeline;
	function sismember(key:KeyType, member:String, ?callback:Callback<BooleanResponse>):Pipeline;
	function scard(key:KeyType, ?callback:Callback<Float>):Pipeline;
	@:overload(function(key:KeyType, count:Float, ?callback:Callback<Array<String>>):Pipeline { })
	function spop(key:KeyType, ?callback:Callback<Null<String>>):Pipeline;
	@:overload(function(key:KeyType, count:Float, ?callback:Callback<Array<String>>):Pipeline { })
	function srandmember(key:KeyType, ?callback:Callback<Null<String>>):Pipeline;
	function sinter(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function sinterstore(destination:String, keys:haxe.extern.Rest<KeyType>):Pipeline;
	function sunion(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function sunionstore(destination:String, keys:haxe.extern.Rest<KeyType>):Pipeline;
	function sdiff(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function sdiffstore(destination:String, keys:haxe.extern.Rest<KeyType>):Pipeline;
	function smembers(key:KeyType, ?callback:Callback<Array<String>>):Pipeline;
	function zadd(key:KeyType, args:haxe.extern.Rest<String>):Pipeline;
	function zincrby(key:KeyType, increment:Float, member:String, ?callback:Callback<String>):Pipeline;
	function zpopmin(key:KeyType, count:Float, ?callback:Callback<Array<String>>):Pipeline;
	function zpopmax(key:KeyType, count:Float, ?callback:Callback<Array<String>>):Pipeline;
	function bzpopmin(args:haxe.extern.Rest<ts.AnyOf3<String, Float, Callback<ts.Tuple3<String, String, String>>>>):Pipeline;
	function bzpopmax(args:haxe.extern.Rest<ts.AnyOf3<String, Float, Callback<ts.Tuple3<String, String, String>>>>):Pipeline;
	function zrem(key:KeyType, members:haxe.extern.Rest<ValueType_>):Pipeline;
	function zremrangebyscore(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, ?callback:Callback<Float>):Pipeline;
	function zremrangebyrank(key:KeyType, start:Float, stop:Float, ?callback:Callback<Float>):Pipeline;
	function zremrangebylex(key:KeyType, min:String, max:String, ?callback:Callback<Float>):Pipeline;
	function zunionstore(destination:String, numkeys:Float, key:KeyType, args:haxe.extern.Rest<String>):Pipeline;
	function zinterstore(destination:String, numkeys:Float, key:KeyType, args:haxe.extern.Rest<String>):Pipeline;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, ?callback:Callback<Array<String>>):Pipeline { })
	function zrange(key:KeyType, start:Float, stop:Float, ?callback:Callback<Array<String>>):Pipeline;
	@:overload(function(key:KeyType, start:Float, stop:Float, withScores:String, ?callback:Callback<Array<String>>):Pipeline { })
	function zrevrange(key:KeyType, start:Float, stop:Float, ?callback:Callback<Array<String>>):Pipeline;
	function zrangebyscore(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, args:haxe.extern.Rest<String>):Pipeline;
	function zrevrangebyscore(key:KeyType, max:ts.AnyOf2<String, Float>, min:ts.AnyOf2<String, Float>, args:haxe.extern.Rest<String>):Pipeline;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, ?callback:Callback<Array<String>>):Pipeline { })
	function zrangebylex(key:KeyType, min:String, max:String, ?callback:Callback<Array<String>>):Pipeline;
	@:overload(function(key:KeyType, min:String, max:String, limit:String, offset:Float, count:Float, ?callback:Callback<Array<String>>):Pipeline { })
	function zrevrangebylex(key:KeyType, min:String, max:String, ?callback:Callback<Array<String>>):Pipeline;
	function zcount(key:KeyType, min:ts.AnyOf2<String, Float>, max:ts.AnyOf2<String, Float>, ?callback:Callback<Float>):Pipeline;
	function zcard(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function zscore(key:KeyType, member:String, ?callback:Callback<Float>):Pipeline;
	function zrank(key:KeyType, member:String, ?callback:Callback<Float>):Pipeline;
	function zrevrank(key:KeyType, member:String, ?callback:Callback<Float>):Pipeline;
	@:overload(function(key:KeyType, data:ts.AnyOf2<Dynamic, js.lib.Map<String, Dynamic>>, ?callback:Callback<BooleanResponse>):Pipeline { })
	@:overload(function(key:KeyType, field:String, value:ValueType_, ?callback:Callback<BooleanResponse>):Pipeline { })
	function hset(key:KeyType, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function hsetBuffer(key:KeyType, field:String, value:ValueType_, ?callback:Callback<global.Buffer>):Pipeline;
	function hsetnx(key:KeyType, field:String, value:ValueType_, ?callback:Callback<BooleanResponse>):Pipeline;
	function hget(key:KeyType, field:String, ?callback:Callback<String>):Pipeline;
	function hgetBuffer(key:KeyType, field:String, ?callback:Callback<global.Buffer>):Pipeline;
	@:overload(function(key:KeyType, data:ts.AnyOf2<Dynamic, js.lib.Map<String, Dynamic>>, ?callback:Callback<BooleanResponse>):Pipeline { })
	function hmset(key:KeyType, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function hmget(key:KeyType, fields:haxe.extern.Rest<String>):Pipeline;
	function hstrlen(key:KeyType, field:String, ?callback:Callback<Float>):Pipeline;
	function hincrby(key:KeyType, field:String, increment:Float, ?callback:Callback<Float>):Pipeline;
	function hincrbyfloat(key:KeyType, field:String, increment:Float, ?callback:Callback<Float>):Pipeline;
	function hdel(key:KeyType, fields:haxe.extern.Rest<String>):Pipeline;
	function hlen(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function hkeys(key:KeyType, ?callback:Callback<Array<String>>):Pipeline;
	function hvals(key:KeyType, ?callback:Callback<Array<String>>):Pipeline;
	function hgetall(key:KeyType, ?callback:Callback<{ }>):Pipeline;
	function hexists(key:KeyType, field:String, ?callback:Callback<BooleanResponse>):Pipeline;
	function incrby(key:KeyType, increment:Float, ?callback:Callback<Float>):Pipeline;
	function incrbyfloat(key:KeyType, increment:Float, ?callback:Callback<Float>):Pipeline;
	function decrby(key:KeyType, decrement:Float, ?callback:Callback<Float>):Pipeline;
	function getset(key:KeyType, value:ValueType_, ?callback:Callback<String>):Pipeline;
	@:overload(function(data:ts.AnyOf2<Dynamic, js.lib.Map<String, Dynamic>>, ?callback:Callback<String>):Pipeline { })
	function mset(args:haxe.extern.Rest<ValueType_>):Pipeline;
	@:overload(function(data:ts.AnyOf2<Dynamic, js.lib.Map<String, Dynamic>>, ?callback:Callback<BooleanResponse>):Pipeline { })
	function msetnx(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function memory(argument:String, key:KeyType, ?callback:Callback<Float>):Pipeline;
	function randomkey(?callback:Callback<String>):Pipeline;
	function select(index:Float, ?callback:Callback<String>):Pipeline;
	function move(key:KeyType, db:String, ?callback:Callback<BooleanResponse>):Pipeline;
	function rename(key:KeyType, newkey:KeyType, ?callback:Callback<String>):Pipeline;
	function renamenx(key:KeyType, newkey:KeyType, ?callback:Callback<BooleanResponse>):Pipeline;
	function expire(key:KeyType, seconds:Float, ?callback:Callback<BooleanResponse>):Pipeline;
	function pexpire(key:KeyType, milliseconds:Float, ?callback:Callback<BooleanResponse>):Pipeline;
	function expireat(key:KeyType, timestamp:Float, ?callback:Callback<BooleanResponse>):Pipeline;
	function pexpireat(key:KeyType, millisecondsTimestamp:Float, ?callback:Callback<BooleanResponse>):Pipeline;
	function keys(pattern:String, ?callback:Callback<Array<String>>):Pipeline;
	function dbsize(?callback:Callback<Float>):Pipeline;
	@:overload(function(username:String, password:String, ?callback:Callback<String>):Pipeline { })
	function auth(password:String, ?callback:Callback<String>):Pipeline;
	@:overload(function(message:String, ?callback:Callback<String>):Pipeline { })
	function ping(?callback:Callback<String>):Pipeline;
	function echo(message:String, ?callback:Callback<String>):Pipeline;
	function save(?callback:Callback<String>):Pipeline;
	function bgsave(?callback:Callback<String>):Pipeline;
	function bgrewriteaof(?callback:Callback<String>):Pipeline;
	function shutdown(save:String, ?callback:Callback<Any>):Pipeline;
	function lastsave(?callback:Callback<Float>):Pipeline;
	function type(key:KeyType, ?callback:Callback<String>):Pipeline;
	function multi(?callback:Callback<String>):Pipeline;
	function exec(?callback:Callback<Array<ts.Tuple2<Null<js.lib.Error>, Dynamic>>>):js.lib.Promise<Array<ts.Tuple2<Null<js.lib.Error>, Dynamic>>>;
	function discard(?callback:Callback<Dynamic>):Pipeline;
	function sync(?callback:Callback<Dynamic>):Pipeline;
	function flushdb(?callback:Callback<String>):Pipeline;
	function flushall(?callback:Callback<String>):Pipeline;
	function sort(key:KeyType, args:haxe.extern.Rest<String>):Pipeline;
	@:overload(function(section:String, ?callback:Callback<String>):Pipeline { })
	function info(?callback:Callback<String>):Pipeline;
	function time(?callback:Callback<ts.Tuple2<String, String>>):Pipeline;
	function monitor(?callback:Callback<node.events.EventEmitter>):Pipeline;
	function ttl(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function pttl(key:KeyType, ?callback:Callback<Float>):Pipeline;
	function persist(key:KeyType, ?callback:Callback<BooleanResponse>):Pipeline;
	function slaveof(host:String, port:Float, ?callback:Callback<String>):Pipeline;
	function debug(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function config(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function subscribe(channels:haxe.extern.Rest<ValueType_>):Pipeline;
	function unsubscribe(channels:haxe.extern.Rest<String>):Pipeline;
	function psubscribe(patterns:haxe.extern.Rest<String>):Pipeline;
	function punsubscribe(patterns:haxe.extern.Rest<String>):Pipeline;
	function publish(channel:String, message:String, ?callback:Callback<Float>):Pipeline;
	function watch(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function unwatch(?callback:Callback<String>):Pipeline;
	function cluster(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function restore(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function migrate(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function dump(key:KeyType, ?callback:Callback<String>):Pipeline;
	function object(subcommand:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function client(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function eval(script:String, numKeys:Float, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function evalsha(scriptSha:String, numKeys:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function script(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function quit(?callback:Callback<String>):Pipeline;
	@:overload(function(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String):Pipeline { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float):Pipeline { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, matchOption:String, pattern:String, countOption:String, count:Float):Pipeline { })
	@:overload(function(cursor:ts.AnyOf2<String, Float>, countOption:String, count:Float, matchOption:String, pattern:String):Pipeline { })
	function scan(cursor:ts.AnyOf2<String, Float>):Pipeline;
	function sscan(key:KeyType, cursor:ts.AnyOf2<String, Float>, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function hscan(key:KeyType, cursor:ts.AnyOf2<String, Float>, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function zscan(key:KeyType, cursor:ts.AnyOf2<String, Float>, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function pfmerge(destkey:KeyType, sourcekeys:haxe.extern.Rest<KeyType>):Pipeline;
	function pfadd(key:KeyType, elements:haxe.extern.Rest<String>):Pipeline;
	function pfcount(keys:haxe.extern.Rest<KeyType>):Pipeline;
	function xack(key:KeyType, group:String, ids:haxe.extern.Rest<String>):Pipeline;
	function xadd(key:KeyType, id:String, args:haxe.extern.Rest<String>):Pipeline;
	function xclaim(key:KeyType, group:String, consumer:String, minIdleTime:Float, id:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xdel(key:KeyType, ids:haxe.extern.Rest<String>):Pipeline;
	function xgroup(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xinfo(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xlen(key:KeyType):Pipeline;
	function xpending(key:KeyType, group:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xrange(key:KeyType, start:String, end:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xread(args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xreadgroup(command:String, group:String, consumer:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xrevrange(key:KeyType, end:String, start:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
	function xtrim(key:KeyType, strategy:String, args:haxe.extern.Rest<ValueType_>):Pipeline;
};