package node.crypto;

@:jsRequire("crypto", "DiffieHellman") extern class DiffieHellman {
	private function new();
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.Buffer { })
	@:overload(function(other_public_key:global.nodejs.ArrayBufferView, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:global.nodejs.ArrayBufferView):global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrime():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getGenerator():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(public_key:String, encoding:global.BufferEncoding):Void { })
	function setPublicKey(public_key:global.nodejs.ArrayBufferView):Void;
	@:overload(function(private_key:String, encoding:global.BufferEncoding):Void { })
	function setPrivateKey(private_key:global.nodejs.ArrayBufferView):Void;
	var verifyError : Float;
	static var prototype : DiffieHellman;
}