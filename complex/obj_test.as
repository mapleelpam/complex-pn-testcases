// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// RUN: pnc %t.pn --symbol -l %s.ini -o %t.sym %BUILTIN_PN
// R U N: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// R U N: %t | FileCheck -input-file=- %s 

 class A
{
	const a:int;	
}
 class B extends A
{
	
}
 class C
{
	function test_not_void():*
	{
	}	
	function test_void():void
	{
	}	
	function test_Void():Void
	{
		var obj:Object;
		var str:String="123";
		var i:int;
		trace(obj+"hello world",str,i);
/*
		trace("helllo");
		trace(1);
		trace(1,2);
		trace("hello world",i);
*/
	}	
}


function main():int
{
    var a : A;
    a = new A();

    printf(" %d ",a instanceof A); // CHECK: 1
    printf(" %d ",a instanceof Object ); //CHECK: 1
    printf(" %d ",a instanceof B ); //CHECK: 0

    printf(" %d ",a is A); // CHECK: 1
    printf(" %d ",a is Object ); //CHECK: 1
    printf(" %d ",a is B ); //CHECK: 0

    var b : B;
    b = new B();

    printf(" %d ",b instanceof C ); //CHECK: 0
}


