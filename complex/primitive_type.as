// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// RUN: %t | FileCheck -input-file=- %s 

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


function main():int
{
    var ap:Array = new Array;
    var bp:Boolean = new Boolean;
    var ip:Int = new Int;
    var np:Number = new Number;
    var op:Object = new Object;
    var sp:String = new String;
    var up:Uint = new Uint;
    var xp:XML = new XML;
    var xmlp:XMLList = new XMLList;

    printf(" %d\n", strcmp(typeof ap,"object") ==0 ); // CHECK: 1
    printf(" %d\n", strcmp(typeof bp,"boolean") ==0); // C HECK-NEXT: 1
    printf(" %d\n", strcmp(typeof ip,"number") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof np,"number") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof op,"object") ==0 ); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof sp,"string") ==0); // C H E CK-NEXT: 1
    printf(" %d\n", strcmp(typeof up,"number") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof xp,"xml") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof xmlp,"xml") ==0); // CHECK-NEXT: 1
}

