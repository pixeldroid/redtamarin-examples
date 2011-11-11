
package example.util
{
	import C.stdlib.EXIT_SUCCESS;
	import C.stdlib.EXIT_FAILURE;
	import avmplus.System;
	
	public class Exit
	{
		static public function success(message:String=null):void
		{
			exit(message, EXIT_SUCCESS);
		}
		
		static public function failure(message:String=null):void
		{
			exit(message, EXIT_FAILURE);
		}
		
		static private function exit(message:String=null, code:int=-1):void
		{
			if (message) trace(message);
			trace("exiting with code", code);
			System.exit(code);
		}
	}
}
