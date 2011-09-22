// RUN: java -jar %ASC_JAR -x -z %t.pn  %s 
// RUN: pnc %t.pn  %BUILTIN_PN -l %s.ini -o %t.cpp
// R U N: g++  -c -o %t.o %t.cpp 
// R U n: %t | FileCheck -input-file=- %s 

package foo
{
    import flash.utils.Dictionary;

class a
{
  public function a( i:int )
  {
    member = i;
  }
  public var member:int = 0;
}

class b extends a
{
   function b()
   { 
    //  member2 = super.member;
      super(1);

		var test: a = new a(1);
		delete test;
   }

    function test_array()
    {
        var myA:Array= new Array("1","2","3");
        delete myA[1];
    }
    function test_dict()
    {
         var dict:Dictionary=new Dictionary();
         var key:Object = new Object();
         dict[key] = "Letters";
         delete dict[key];
    }
    function test_prop()
    {
        var obj:Object = new Object();
//        obj.hello="nihao";
//        delete key.obj;
    }

  public var member2:int = 0;
}

}
