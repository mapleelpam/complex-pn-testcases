// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// : %t | FileCheck -input-file=- %s 


function main():int
{
    var s1: String = "a";
    var s2: String = "b";
    var s3: String = "ab";

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

