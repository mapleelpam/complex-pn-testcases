// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// : %t | FileCheck -input-file=- %s 

function main():int
{
    var s1: String = "a";
    var s2: String = "b";
    var s3: String = "a";

    if( s1 == s3 )
    {
        printf("1\n");    //CHECK: 1
    }
    else
    {
        printf("2\n");    
    }
    
    if( s2 == s3 )
    {
        printf("3\n");
    }
    else
    {
        printf("4\n");    //CHECK: 4
    }

    /*
    if( s1 == "a" )
    {
        printf("5\n");  //C H E C K: 5
    }
    else
    {
        printf("6\n");    
    }
    */
}

