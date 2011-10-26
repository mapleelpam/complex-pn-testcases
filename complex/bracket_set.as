// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// R U N: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// R U N: %t | FileCheck -input-file=- %s 



function main():int
{
    var a : Object;
    var ar : Array;
    var key : String;

    a[ key ] = main ();

    ar[ key ] = main ();
}


