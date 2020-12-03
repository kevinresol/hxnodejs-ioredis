package ioredis;

typedef DNSLookupFunction = (hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void;