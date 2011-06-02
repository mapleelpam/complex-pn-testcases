// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// : %t | FileCheck -input-file=- %s 


[native(cls="XCString", instance="XCString", methods="auto")]
class String
{
    function String();
}

function main():int
{
    var s1: String = new String("a");
    var s2: String = new String("b");

}

