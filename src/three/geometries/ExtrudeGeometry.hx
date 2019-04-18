package three.geometries;

import haxe.extern.EitherType;
import three.core.Geometry;
import three.extras.core.Shape;

typedef ExtrudeGeometryOptions = {
	?curveSegments : Int,
	?steps : Int,
	?amount : Float,
	?bevelEnabled : Bool,
	?bevelThickness : Float,
	?bevelSize : Float,
	?bevelSegments : Int,
	?extrudePath : Dynamic, //CurvePath,
	?uvGenerator : Dynamic,
}

@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends Geometry {
	function new( shapes : EitherType<Shape,Array<Shape>>, ?options : ExtrudeGeometryOptions ) : Void;
	function addShapeList( shapes : Array<Shape>, ?options : ExtrudeGeometryOptions ) : Void;
	function addShape( shape : Shape, ?options : ExtrudeGeometryOptions ) : Void;
	function toJSON() : Dynamic;
}
