
// cursor animator; needs stdout.flush() - - - - - - - - - - - - - - - - - - - -

import avmplus.System;
import C.unistd.sleep;

// http://cboard.cprogramming.com/c-programming/17736-ascii-animation.html
const c:String = "/-\\|";
const n:uint = c.length;

for (var i:uint = 0; i < 100; i++)
{
	System.exec("clear");
	print(c.charAt(i%n));
	/*
	if (i > 0) System.stdout.write("\b");
	System.stdout.write(c.charAt(i%n));
	System.stdout.flush(); // no flush to force display of buffer :(
	*/
	sleep(1000/24); // milliseconds
}
System.stdout.write("\b");

System.exit(0);

