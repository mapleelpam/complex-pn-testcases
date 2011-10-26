// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -o %t.cpp %BUILTIN_PN -l %s.ini
// RUN: g++ -o %t %t.cpp
// : %t | FileCheck -input-file=- %s 


function main() : int
{
	var o : Object;
	
	var i : int  = o as int;
/*
	var u : uint = o as uint;
	var b : Boolean = o as Boolean;
	var n : Number = o as Number;
	var s : String = o as String;
	var obj: Object = o as Object;
*/
}
