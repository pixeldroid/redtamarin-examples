
try
{
	trace("throwing error in try/catch...");
	throw new Error("i am a caught error.");
}
catch (error:Error)
{
	trace("caught error:", error);
}

trace("throwing uncaught error...");
throw new Error("i escaped!");

trace("this message is too late"); // <-- will not print; error triggers system exit
