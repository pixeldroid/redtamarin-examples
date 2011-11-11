
import avmplus.System;

var _usage:String = <![CDATA[perform simple math ops
Usage:
  args [-asmd] num1 num2
  
  -a  add num1 to num2 and print the result to stdout
  
  -s  subtract num2 from num1 and print the result to stdout
  
  -m  multiply num1 by num2 and print the result to stdout
  
  -d  divide num1 by num2 and print the result to stdout
]]>;

var calculation:Function;

var numArgs:uint = System.argv.length;
switch (numArgs)
{
	case 3:
	if (setOp(System.argv[0]))
	{
		var a:Number = parseFloat(System.argv[1]);
		var b:Number = parseFloat(System.argv[2]);
		trace(calculation(a, b));
	}
	else usage();
	break;
	
	default:
	usage();
	break;
}

System.exit(0);



function setOp(s:String):Boolean
{
	var isValid:Boolean = true;
	
	switch (s)
	{
		case '-a': calculation = add; break;
		case '-s': calculation = sub; break;
		case '-m': calculation = mul; break;
		case '-d': calculation = div; break;
		
		default: isValid = false; break;
	}
	
	return isValid;
}

function add(a:Number, b:Number):Number { return a + b; }
function sub(a:Number, b:Number):Number { return a - b; }
function mul(a:Number, b:Number):Number { return a * b; }
function div(a:Number, b:Number):Number { return a / b; }

function usage():void
{
	trace(_usage);
	System.exit(1);
}


