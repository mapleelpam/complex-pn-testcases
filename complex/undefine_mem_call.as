// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// R U N: %t | FileCheck -input-file=- %s 

 class A
{
	
}
 class B extends A
{
	public function callee();
	
}
 class C
{
	
}


function main():int
{
	var a:A = new B;
	a.callee();
}


