// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn -l %s.ini -o %t.cpp
// RUN: g++ -o %t %t.cpp -lruntime -D_LINUX
// : %t | FileCheck -input-file=- %s 

class Maple
{
    public function badParameter(x:int) : int
    {
        var y:int;
        return y;
    }

    public function test(y:int):int
    {

        var x:int;
        if( y == 0 )
        {   
            return 123;
        } else if( y == 1 ) {
        } else if( y == 2 ) { 
        }else
            return y;
    }
}

function main() : int
{
    var m:Maple;
    m = new Maple();
}

