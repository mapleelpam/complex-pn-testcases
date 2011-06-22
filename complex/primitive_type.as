// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// R U N: %t | FileCheck -input-file=- %s 


function main():int
{
    var ap:Array = new Array;
    var bp:Boolean = new Boolean;
//    var ip:Int = new Int;
    var np:Number = new Number;
    var op:Object = new Object;
    var sp:String = new String;
//    var up:Uint = new Uint;
    var xp:XML = new XML;
    var xmlp:XMLList = new XMLList;

    printf(" %d\n", strcmp(typeof ap,"Array") ==0 ); // CHECK: 1
    printf(" %d\n", strcmp(typeof bp,"XCBoolean") ==0); // CHECK-NEXT: 1
 //   printf(" %d\n", strcmp(typeof ip,"Number") ==0); // C HECK-NEXT: 1
    printf(" %d\n", strcmp(typeof np,"Number") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof op,"Object") ==0 ); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof sp,"XCString") ==0); // CHECK-NEXT: 1
//    printf(" %d\n", strcmp(typeof up,"number") ==0); // C H E C K-NEXT: 1
    printf(" %d\n", strcmp(typeof xp,"XML") ==0); // CHECK-NEXT: 1
    printf(" %d\n", strcmp(typeof xmlp,"xml") ==0); // CHECK-NEXT: 1
}

