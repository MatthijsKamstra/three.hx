package three.core;

#if (haxe_ver >= 4)
import js.lib.ArrayBufferView;
#else
import js.html.ArrayBufferView;
#end
import three.math.Color;
import three.math.Vector2;
import three.math.Vector3;
import three.math.Vector4;

@:native("THREE.BufferAttribute")
extern class BufferAttribute {

	var uuid(default,null) : String;
	var array(default,null) : Dynamic;
	var itemSize(default,null) : Int;
	@:native("dynamic") var dynamic_(default,null) : Bool;
	var updateRange(default,null) : { offset : Float, count : Float };
	var version : Int;
	var normalized : Bool;
	var needsUpdate : Bool;
	var count(default,null) : Int;

	var length(default,null) : Int;

	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;

	function setDynamic( value : Bool ) : BufferAttribute;
	function copy( source : Dynamic ) : BufferAttribute;
	function copyAt( index1 : Int, attribute : BufferAttribute, index2 : Int ) : Void;
	function copyArray( array : Array<Dynamic> ) : BufferAttribute;
	function copyColorsArray( colors : Array<Color> ) : BufferAttribute;
	function copyIndicesArray( indices : Array<Vector3> ) : BufferAttribute;
	function copyVector2sArray( vectors : Array<Vector2> ) : BufferAttribute;
	function copyVector3sArray( vectors : Array<Vector3> ) : BufferAttribute;
	function copyVector4sArray( vectors : Array<Vector4> ) : BufferAttribute;
	function set( value : Dynamic ) : Void;
	function getX( index : Int ) : Dynamic;
	function setX( index : Int, x : Dynamic ) : Void;
	function getY( index : Int ) : Dynamic;
	function setY( index : Int, y : Dynamic ) : Void;
	function getZ( index : Int ) : Dynamic;
	function setZ( index : Int, z : Dynamic ) : Void;
	function getW( index : Int ) : Dynamic;
	function setW( index : Int, w : Dynamic ) : Dynamic;
	function setXY( index : Int, x : Dynamic, y : Dynamic ) : Void;
	function setXYZ( index : Int, x : Dynamic, y : Dynamic, z : Dynamic ) : Void;
	function setXYZW( index : Int, x : Dynamic, y : Dynamic, z : Dynamic, w : Int ) : Void;
	function onUpload( callback : Void->Void ) : BufferAttribute;
	function clone() : BufferAttribute;
	function toJSON() : Dynamic;
}

@:native("THREE.Int8BufferAttribute")
extern class Int8BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Uint8BufferAttribute")
extern class Uint8BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Uint8ClampedBufferAttribute")
extern class Uint8ClampedBufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Int16BufferAttribute")
extern class Int16BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Uint16BufferAttribute")
extern class Uint16BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Int32BufferAttribute")
extern class Int32BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Uint32BufferAttribute")
extern class Uint32BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Float32BufferAttribute")
extern class Float32BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}

@:native("THREE.Float64BufferAttribute")
extern class Float64BufferAttribute extends BufferAttribute {
	function new( array : ArrayBufferView, itemSize : Int, ?normalized : Bool ) : Void;
}
