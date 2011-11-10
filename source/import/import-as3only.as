
import example.util.Random;

trace("random integer (1 .. 100)", Random.integer(100));

for (var i:uint = 0; i < 5; i++) trace("random letter (a .. z)", Random.character());

var n:Number = Random.number();
trace("random float (normalized)", n);

