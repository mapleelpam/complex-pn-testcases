// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pn-translator %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime
// RUN: %t | FileCheck -input-file=- %s 

package
{ 

internal class A
{
}
internal class B
{
} 
    function main():int
    { 
        var a : A;
        a = new A(); 

        wprintf(" %d ",a instanceof A); // CHECK: 1
        wprintf(" %d ",a instanceof Object ); //CHECK: 1
        wprintf(" %d ",a instanceof B ); //CHECK: 0

        wprintf(" %d ",a is A); // CHECK: 1
        wprintf(" %d ",a is Object ); //CHECK: 1
        wprintf(" %d ",a is B ); //CHECK: 0

//        wprintf(" %d ", wcscmp(typeof a,"object") ); // CH ECK: 0 
    } 
}
