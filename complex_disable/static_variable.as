// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -o %t.cpp -l %s.ini
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// RUN: %t | FileCheck -input-file=- %s 

package a
{
	function b() : int
	{
		return 456;
	}
	class c 
	{
		static public function d() : int
		{
			return 789;
		}

		static public var e:int = 987;
	}
}

function main() : int
{
	a.b();
	a.c.d();
	printf(" %d \n", a.b() ); // CHECK: 456
	printf(" %d \n", a.c.d() ); // CHECK: 789

	printf(" %d \n", a.c.e ); // CHECK: 987
}

