// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pn-translator %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime
// RUN: %t | FileCheck -input-file=- %s 

package
{ 



    function main():int
    {
        var xml:XML= new XML("<foo><bar>text1</bar><bar>text2</bar></foo>");
        var len:int = xml.child("bar").length();
        printf(" %d ", len ); //CHECK: 2

        xml = new XML("<foo id='22'><bar>44</bar>text<!-- comment --><?instruction ?></foo>");
        len = xml.children().length();
        printf(" %d ", len ); //CHECK: 4

    }


}
