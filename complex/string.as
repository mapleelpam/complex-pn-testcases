// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// R U N: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// R U N: %t | FileCheck -input-file=- %s 



function main():int
{
    var a : String;
	var idx : int;
	idx = a.indexOf("123", 0 );


    var b1 : String = "hello" + a;
    var b2 : String = a + "hello";
}

function test_param( s:String ) : int
{

	return s.length;
}

