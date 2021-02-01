package ioredis;

typedef DNSLookupFunction = (hostname:String, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>, address:String) -> Void, (err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void>) -> Void;