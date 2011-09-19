/* THIS FILE IS GENREATED BY pn-translater, you should not modify this file.*/
/* NO LICNESE DECLARE */
// Auther : Xing
#include <stdio.h>
#include <frt/toplevel/TopLevel.h>
 #include <frt/geom/Point.h>

/*begin*/
    SMART_PTR(A);
    class A  
    {
    DECLARE_RTTI;
      CLASS(A,Object);
        VIRTUAL_METHOD( public, void, func_a   , () ) = 0;
        VIRTUAL_METHOD( public, int, func_b   , (int x, int y) ) = 0;

    };
    IMPLEMENT_RTTI(A,  Object , "");


/*end*/


/*begin*/
    SMART_PTR(A_2);
    class A_2  
    {
    DECLARE_RTTI;
      CLASS(A_2,Object);
        VIRTUAL_METHOD( public, void, func_c   , () ) = 0;
        VIRTUAL_METHOD( public, int, func_d   , (int x, int y) ) = 0;

    };
    IMPLEMENT_RTTI(A_2,  Object , "");


/*end*/


/*begin*/
    SMART_PTR(B);
    class B  : public Object ,  public Object 
    {
      DECLARE_RTTI;
      CLASS(B,Object);
        VIRTUAL_METHOD( public, void, func_a   , () )
          {/*enter function*/
          {
          }
          /*enter function*/
          }        VIRTUAL_METHOD( public, int, func_b   , (int x, int y) )
          {/*enter function*/
          {
          }
          /*enter function*/
          }
        VIRTUAL_METHOD( public, void, func_c   , () )
          {/*enter function*/
          {
          }
          /*enter function*/
          }
        VIRTUAL_METHOD( public, int, func_d   , (int x, int y) )
          {/*enter function*/
          {
          }
          /*enter function*/
          }
    };
    IMPLEMENT_RTTI(B,  Object , "A,A_2");


/*end*/


     int main   ()
    {/*enter function*/
    {

      ::BPtr b  =  new B(  );
    }
    /*enter function*/
    }
namespace { 
} /* anonymouse*/ 

namespace { 
/* XMLList is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* uint is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* Array is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* Date is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
} /* anonymouse*/ 

namespace { 
/* Object is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* Function is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* RegExp is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* XML is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* Math is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* String is intrinsic, and ignore */} /* anonymouse*/ 

namespace { 
/* Number is intrinsic, and ignore */} /* anonymouse*/ 

namespace flash{ namespace utils{ 
/* Timer is intrinsic, and ignore */} /* flash*/ } /* utils*/ 

namespace flash{ namespace utils{ 
/* Dictionary is intrinsic, and ignore */} /* flash*/ } /* utils*/ 

namespace flash{ namespace utils{ 
/* ByteArray is intrinsic, and ignore */} /* flash*/ } /* utils*/ 

namespace flash{ namespace net{ 
/* URLStream is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLRequestHeader is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLLoader is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLLoaderDataFormat is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* Socket is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLRequest is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLVariables is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace net{ 
/* URLRequestMethod is intrinsic, and ignore */} /* flash*/ } /* net*/ 

namespace flash{ namespace geom{ 
/* Vector3D is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* PerspectiveProjection is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* Transform is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* ColorTransform is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* Matrix3D is intrinsic, and ignore */} /* flash*/ } /* geom*/ 


namespace flash{ namespace geom{ 
/* Rectangle is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* Vector2D is intrinsic, and ignore */} /* flash*/ } /* geom*/ 


namespace flash{ namespace geom{ 
/* Matrix is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace geom{ 
/* Point is intrinsic, and ignore */} /* flash*/ } /* geom*/ 

namespace flash{ namespace filters{ 
/* BitmapFilter is intrinsic, and ignore */} /* flash*/ } /* filters*/ 

namespace flash{ namespace ui{ 
/* ContextMenu is intrinsic, and ignore */} /* flash*/ } /* ui*/ 

namespace flash{ namespace display{ 
/* Bitmap is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* DisplayObject is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* InteractiveObject is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* BitmapDataChannel is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* StageScaleMode is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* LoaderInfo is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* StageAlign is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* DisplayObjectContainer is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* BitmapData is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* Loader is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* Graphics is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* BlendMode is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* IBitmapDrawable is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* Stage is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace display{ 
/* Sprite is intrinsic, and ignore */} /* flash*/ } /* display*/ 

namespace flash{ namespace system{ 
/* SecurityDomain is intrinsic, and ignore */} /* flash*/ } /* system*/ 

namespace flash{ namespace system{ 
/* LoaderContext is intrinsic, and ignore */} /* flash*/ } /* system*/ 

namespace flash{ namespace system{ 
/* ApplicationDomain is intrinsic, and ignore */} /* flash*/ } /* system*/ 

namespace flash{ namespace text{ 
/* TextSnapshot is intrinsic, and ignore */} /* flash*/ } /* text*/ 

namespace flash{ namespace text{ 
/* TextFormat is intrinsic, and ignore */} /* flash*/ } /* text*/ 

namespace flash{ namespace text{ 
/* StyleSheet is intrinsic, and ignore */} /* flash*/ } /* text*/ 

namespace flash{ namespace text{ 
/* TextField is intrinsic, and ignore */} /* flash*/ } /* text*/ 

namespace flash{ namespace text{ 
/* TextLineMetrics is intrinsic, and ignore */} /* flash*/ } /* text*/ 

namespace flash{ namespace events{ 
/* HTTPStatusEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* EventDispatcher is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* TextEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* Event is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* IOErrorEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* ErrorEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* IEventDispatcher is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* ProgressEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* UncaughtErrorEvents is intrinsic, and ignore */} /* flash*/ } /* events*/ 

namespace flash{ namespace events{ 
/* TimerEvent is intrinsic, and ignore */} /* flash*/ } /* events*/ 

