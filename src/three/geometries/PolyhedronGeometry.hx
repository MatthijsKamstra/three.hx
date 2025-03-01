package three.geometries;

@:native("THREE.PolyhedronGeometry")
extern class PolyhedronGeometry extends three.core.Geometry {
    function new( vertices : Array<Float>, indices : Array<Int>, ?radius : Float, ?detail : Int ) : Void;
}
