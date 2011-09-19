// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %BUILTIN_PN %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre
// : %t | FileCheck -input-file=- %s 

package
{
	import flash.utils.Timer;

	public class a
	{
		function main():int
		{
			var a: String;
			a = new Date().toString();
		}
	}
}

