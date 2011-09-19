// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// R U N: %t | FileCheck -input-file=- %s 

 class A
{
	private var temp1:int;
	private var temp2:int;
	
}
 class B extends A
{
	public function callee()
	{
		printf("invoke callee\n");
	}

	private var temp3:int;
	private var temp4:int;

	
}
 class C
{
	
}


function main():int
{
	var a:A = new B;
	a.callee(); // CHECK: invoke callee

    var b:B = new B;
	b.callee(); // CHECK: invoke callee
}


