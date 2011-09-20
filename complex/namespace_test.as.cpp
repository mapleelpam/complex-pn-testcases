namespace base
{
	SMART_PTR(A);
	class A: public Object
	{
	};
};

namespace foo
{
	SMART_PTR(B);
	class B : public base::A
	{

	};
	
	SMART_PTR(C);
	class C: public Object
	{
	public:
		int main()
		{
			base::APtr a;
			a = new base::A();

			printf(" %d ",INSTANCEOF(a, base::A)); // CHECK: 1
			printf(" %d ",INSTANCEOF(a, Object)); //CHECK: 1
			printf(" %d ",INSTANCEOF(a, foo::B)); //CHECK: 0

			printf(" %d ",IS(a, base::A)); // CHECK: 1
			printf(" %d ",IS(a, Object)); //CHECK: 1
			printf(" %d ",IS(a, foo::B)); //CHECK: 0

			base::APtr ab;
			ab = new foo::B();

			printf(" %d ",INSTANCEOF(ab, base::B)); //CHECK: 1
			printf(" %d ",INSTANCEOF(ab, foo::C)); //CHECK: 0
			
			printf(" %d ",IS(ab, foo::B)); //CHECK: 1
			printf(" %d ",IS(ab, foo::C)); //CHECK: 0
			
			foo::BPtr b;
			b = AS(ab, foo::B);
			foo::CPtr c;
			c = AS(ab, foo::C);
			
			printf(" %d ", b != 0); //CHECK: 1
			printf(" %d ", c != 0); //CHECK: 0
			
			bar::DPtr d;
			d = new bar::D();
			printf(" %d ",INSTANCEOF(d, base::A)); // CHECK: 1
			printf(" %d ",INSTANCEOF(d, bar::D)); //CHECK: 1
			printf(" %d ",INSTANCEOF(d, foo::B) ); //CHECK: 0
			
			bar::BPtr exb;
			exb = new bar::B();
			printf(" %d ",INSTANCEOF(exb, foo::B)); // CHECK: 0
			printf(" %d ",INSTANCEOF(exb, bar::B)); // CHECK: 1
		}

	};
};

namespace bar
{
	SMART_PTR(D);
	class D : public base::A
	{
	};
	
	SMART_PTR(B);
	class B
	{
	};
};
