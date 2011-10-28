// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp %BUILTIN_PN
// R U N: gcc -o %t %t.cpp
// R U N: %t | FileCheck -input-file=- %s 

function hex2decade( v:String): int
{
	var ret:int;
    switch( v )
    {
        case "a":
			ret = 10;
			break;
        case "b":
			ret = 11;
			break;
        case "c":
			ret = 12;
			break;
        case "d":
			ret = 13;
			break;
        case "e":
			ret = 14;
			break;
        case "f":
			ret = 15;
			break;
		default:
			ret = 0;
    }
	return ret;
}

function main():int
{

	printf(" %d\n", hex2decade("a")); // CHECK: 10
	printf(" %d\n", hex2decade("b")); // CHECK: 11
	printf(" %d\n", hex2decade("c")); // CHECK: 12
	printf(" %d\n", hex2decade("d")); // CHECK: 12
	printf(" %d\n", hex2decade("e")); // CHECK: 12
	printf(" %d\n", hex2decade("f")); // CHECK: 12
}

