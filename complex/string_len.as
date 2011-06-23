// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// : %t | FileCheck -input-file=- %s 

function main():int
{
    var s1: String = new String("a");
    var s2: String = new String("bcdef");

//TBP
    var l:int = s1.length;

	printf(" %d ", l );	// CHECK: 1

    var l2:int = s2.length;
	printf(" %d ", l2 );	// CHECK: 5
}

