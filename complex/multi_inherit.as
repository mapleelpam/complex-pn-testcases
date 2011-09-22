// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// R U N: g++ -o %t %t.cpp -lruntime -D_LINUX -lpcre


package foo
{
    interface A
    {
        function func_a():void;
        function func_b( x:int, y:int ):int;
    }
    interface A_2
    {
        function func_c():void;
        function func_d( x:int, y:int ):int;
    }

    class B implements A, A_2 
    {
        function func_a():void
        {
        }
        function func_b( x:int, y:int ):int
        {
        }
        function func_c():void
        {
        }
        function func_d( x:int, y:int ):int
        {
        }
    }
}
