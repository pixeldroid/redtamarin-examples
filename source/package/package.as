
include "P.as";

//import P.v; // <-- error; not visible outside of package
import P.V;
import P.P;
import P.F;
import P.G;
import P.C;

trace("P.V", V);
trace("P.P", P);
trace("P.F", F());
trace("P.G", G());
trace("P.C (1)", (new C()).c);
trace("P.C (2)", (new C()).c);
trace("P.C (3)", (new C()).c);

