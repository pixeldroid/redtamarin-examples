
package P
{
	var v:String = "package-level private var";
	public var V:String = "package-level public var";
	
	public function get P():String { return "package-level public getter granting access to " +v; }
	
	function f():String { return "package-level private function"; }
	function g():void { v = "... and modifying it"; }
	public function F():String { return "package-level public function"; }
	public function G():String
	{
		var s:String = "package-level public function";
		s += " accessing " +v;
		g();
		s += v;
		return s;
	}

	var cc:uint = 0;	
	class c
	{
		public const name:String = "c" +(cc++);
		public function c() {}
	}
	
	public class C
	{
		protected var minic:c = new c();
		public function C() {}
		public function get c():String { return minic.name; }
	}
}

