package node.assert;

@:jsRequire("assert", "AssertionError") extern class AssertionError {
	function new(?options:{ /** If provided, the error message is set to this value. **/ @:optional var message : String; /** The `actual` property on the error instance. **/ @:optional var actual : Dynamic; /** The `expected` property on the error instance. **/ @:optional var expected : Dynamic; /** The `operator` property on the error instance. **/ @:optional @:native("operator") var operator_ : String; /** If provided, the generated stack trace omits frames before this function. **/ @:optional var stackStartFn : haxe.Constraints.Function; });
	var name : String;
	var message : String;
	var actual : Dynamic;
	var expected : Dynamic;
	@:native("operator")
	var operator_ : String;
	var generatedMessage : Bool;
	var code : String;
	static var prototype : AssertionError;
}