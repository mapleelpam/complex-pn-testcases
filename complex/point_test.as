// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// : %t | FileCheck -input-file=- %s 

package flash.geom
{
    intrinsic class Point {

        var x : Number;
        var y : Number;
        var length : Number;

        function Point( x : Number, y : Number );

        function normalize( length : Number ) : void;
        function add( p : Point ) : Point;
        function subtract( p : Point ) : Point;
        function equals( p : Object ) : Boolean;
        function offset( dx : Number, dy : Number ) : void;
        function clone() : Point;
        function toString() : String;


        static function distance( p1 : Point, p2 : Point ) : Number;
        static function interpolate( p1 : Point, p2 : Point, f : Number ) : Point;
        static function polar( dist : Number, angle : Number ) : Point;

    }
    function test() : void
    {
    var p1:Point = new Point();
    }
}

[native(cls="XCString", instance="XCString", methods="auto")]
class String
{
    function String();
}
[native(cls="XCBoolean", instance="XCBoolean", methods="auto")]
class Boolean
{
    function Boolean();
}



function main() : int
{
    var p3:flash.geom.Point = new flash.geom.Point();
    flash.geom.test();   

    flash.geom.Point.distance(p3,p3);
    printf(" %d \n", flash.geom.Point.distance(p3,p3) );

}

