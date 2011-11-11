
import avmplus.System;
import C.unistd.sleep;

const fps:int = 30;
for (var i:uint = 0; i < fps*15; i++)
{
	System.exec("clear");
	print(frame(20));
	sleep(1000/fps); // ms
}
System.exit(0);


// from http://www.p01.org/releases/256b_tunnex/
var t:int = 0;
function frame(d:int=20):String
{
	var x:int, y:int;
	var nl:String = "\n";
	var s:String = [,,,,,,].join('P01 TUNNEX in TAMARIN - ').substr(++t%24, d*4-1) +nl;
	for(y = -3*d/4; 3*d/4 > ++y; )
	{
		for(s += nl, x = -d*2; d*2 > ++x; )
		{
			s += ((399/Math.sqrt(x*x+y*y)+t)^(Math.atan2(y,x)*20.4+t)) & 8 ? ' ' : 'W';
		}
	}
	return s;
}

