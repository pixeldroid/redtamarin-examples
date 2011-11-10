
var xml:XML = <root>
	<child name="A" age="35">
		<child name="A.a" age="1"/>
		<child name="A.b" age="2"/>
		<child name="A.c" age="3"/>
	</child>
	<child name="B" age="30">
		<child name="B.a" age="1"/>
		<child name="B.b" age="2"/>
	</child>
</root>;

trace("xml:\n", xml);

var children:XMLList = xml..child;
trace(children.length(), "children");

var grandchildren:XMLList = xml..child.child;
trace(grandchildren.length(), "grandchildren");

var twoYearOlds:XMLList = xml..child.(@age==2);
var num2s:uint = twoYearOlds.length();
trace(num2s, "two-year-olds:");
for (var i:uint = 0; i < num2s; i++) trace("   ", twoYearOlds[i].@name);

