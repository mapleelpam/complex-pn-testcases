// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pn-translator %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime
// : %t | FileCheck -input-file=- %s 

package
{ 



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

    }


}
