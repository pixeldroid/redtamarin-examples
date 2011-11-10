
trace("throwing error...");
throw new Error("this is only a test.");
trace("error thrown"); // <-- will not print; error triggers system exit
