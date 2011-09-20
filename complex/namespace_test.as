// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -o %t.cpp -l %s.ini
// R U N: g++ -o %t %t.cpp 
// R U N: %t | FileCheck -input-file=- %s 

package base
{
	class A
	{
	}
}

package foo
{
	import base.A;
	import bar.D;
	
	class B extends A
	{

	}
	
	class C
	{
		public function main():int
		{
			var a : A;
			a = new A();

			printf(" %d ",a instanceof A); // CHECK: 1
			printf(" %d ",a instanceof Object ); //CHECK: 1
			printf(" %d ",a instanceof B ); //CHECK: 0

			printf(" %d ",a is A); // CHECK: 1
			printf(" %d ",a is Object ); //CHECK: 1
			printf(" %d ",a is B ); //CHECK: 0

			var ab : A;
			ab = new B();

			printf(" %d ",ab instanceof B ); //CHECK: 1
			printf(" %d ",ab instanceof C ); //CHECK: 0
			
			printf(" %d ",ab is B ); //CHECK: 1
			printf(" %d ",ab is C ); //CHECK: 0
			
			var b: B;
			b = ab as B;
			var c: C;
			c = ab as C;
			
			printf(" %d ", b != 0); //CHECK: 1
			printf(" %d ", c != 0); //CHECK: 0
			
			var d: D;
			d = new D();
			printf(" %d ",d instanceof A); // CHECK: 1
			printf(" %d ",d instanceof D ); //CHECK: 1
			printf(" %d ",d instanceof B ); //CHECK: 0
			
			var exb : bar.B;
			exb = new bar.B();
			printf(" %d ",exb instanceof B); // CHECK: 0
			printf(" %d ",exb instanceof bar.B); // CHECK: 1
		}

	}
}

package bar
{
	import base.A;
	class D extends A
	{
	}
	
	class B
	{
	}
}
