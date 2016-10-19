package
{
	public class A
	{
		public function A()
		{
		}
		function getB():void
		{
			var b:Object = new Object();
			b.f = f;
			return b;
		}
		function f():String
		{
			trace("我是f()");
			return "我是f()的返回值";
		}
	}
}