// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime
// : %t | FileCheck -input-file=- %s 

function main():int
{
    var s1: String = new String("a");
    var s2: String = new String("b");
    var s3: String = new String("ab");

/*
    var s4: String = s1 + s2;

    if( s3 == s4 )
    {
        printf("1\n");          // CHECK: 1
    } 
    else
    {
        printf("2\n");
    }
*/

}
