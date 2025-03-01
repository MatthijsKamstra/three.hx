package three.extras.core;

import three.math.Vector2;

@:native("THREE.Curve")
extern class Curve {

    var arcLengthDivisions : Float;

    function new() : Void;

    function getPoint( t : Float ) : Vector2;
    function getPointAt( u : Float, ?optionalTarget : Vector2 ) : Vector2;
    function getPoints( ?divisions : Int ) : Array<Vector2>;
    function getSpacedPoints( ?divisions : Int ) : Array<Vector2>;
    function getLength() : Float;
    function getLengths( divisions : Int ) : Array<Float>;
    function updateArcLengths() : Void;
    function getUtoTmapping(u:Float, ?distance:Float) : Float;
    function getTangent( t : Float ) : Vector2;
    function getTangentAt( u : Float ) : Vector2;
    function computeFrenetFrames( segments : Int, closed : Bool ) : Vector2;
    function clone() : Curve;
    function copy( source : Curve ) : Curve;
    function toJSON() : Dynamic;
    function fromJSON( json : Dynamic ) : Curve;
    //function getNormalVector(t:Float) : Vector2;
}
