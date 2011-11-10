
package example.util
{
	import avmplus.System;
	
	public class Exit
	{
		static public const SUCCESS:int = 0;
		static public const FAILURE:int = 1;
		
		static public function success(message:String=null):void
		{
			if (message) trace(message);
			System.exit(SUCCESS);
		}
		
		static public function failure(message:String=null):void
		{
			if (message) trace(message);
			System.exit(FAILURE);
		}
	}
}
