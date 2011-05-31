// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// RUN: %t | FileCheck -input-file=- %s 

 class A
{
	
}
 class B extends A
{
	
}
 class C
{
	
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


