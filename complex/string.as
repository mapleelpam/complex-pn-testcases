// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pn-translator %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime
// : %t | FileCheck -input-file=- %s 

package
{ 
    function main():int
    {
        var s1: String = new String("a");
        var s2: String = new String("b");

    }

}
