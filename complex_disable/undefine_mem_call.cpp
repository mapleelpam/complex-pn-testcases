/* THIS FILE IS GENREATED BY pn-translater, you should not modify this file.*/
/* NO LICNESE DECLARE */
// Auther : Xing
#include <stdio.h>
#include <frt/toplevel/TopLevel.h>
 #include <frt/geom/Point.h>

SMART_PTR(A);
class A  :  public Object 
{
    DECLARE_RTTI;
    CLASS(A,Object);
};
IMPLEMENT_RTTI(A,  Object , "");



SMART_PTR(B);
class B : public ::A 
{
    DECLARE_RTTI;
    CLASS(B,A);

    VIRTUAL_METHOD( public, void, callee , () )
    {
        /*enter function*/
        {
        }
        /*leave function*/
    }};
IMPLEMENT_RTTI(B,  A , "");



SMART_PTR(C);
class C  :  public Object 
{
    DECLARE_RTTI;
    CLASS(C,Object);
};
IMPLEMENT_RTTI(C,  Object , "");




int main ()
{
    /*enter function*/
    {

        ::APtr a  =  new B();
        a->invokeVoid("callee", 0  );

    }
    /*leave function*/
}
