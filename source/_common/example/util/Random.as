
package example.util
{
	public class Random
	{
		static public function number(n:Number=1):Number
		{
			return Math.random() * n;
		}
		
		static public function integer(n:int=int.MAX_VALUE):int
		{
			return Math.floor(Math.random() * n);
		}
		
		static public function character(s:String="abcdefghijklmnopqrstuvwxyz"):String
		{
			return s.charAt(integer(s.length));
		}
		
	}
}
