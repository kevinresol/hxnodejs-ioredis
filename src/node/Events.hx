package node;

@:jsRequire("events") @valueModuleOnly extern class Events {
	@:overload(function(emitter:Events, event:String):js.lib.Promise<Array<Dynamic>> { })
	static function once(emitter:Events, event:ts.AnyOf2<String, js.lib.Symbol>):js.lib.Promise<Array<Dynamic>>;
	static function on(emitter:node.events.EventEmitter, event:String):js.lib.AsyncIterableIterator<Dynamic>;
	static final captureRejectionSymbol : js.lib.Symbol;
	/**
		This symbol shall be used to install a listener for only monitoring `'error'`
		events. Listeners installed using this symbol are called before the regular
		`'error'` listeners are called.
		
		Installing a listener using this symbol does not change the behavior once an
		`'error'` event is emitted, therefore the process will still crash if no
		regular `'error'` listener is installed.
	**/
	static final errorMonitor : js.lib.Symbol;
	/**
		Sets or gets the default captureRejection value for all emitters.
	**/
	static var captureRejections : Bool;
}