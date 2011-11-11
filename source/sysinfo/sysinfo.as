
import avmplus.System;
import avmplus.OperatingSystem;

trace( System.programFilename, "(process id " +System.pid +")" );
trace( "avmplus v" + System.getAvmplusVersion() );
trace( "redtamarin v" + System.getRedtamarinVersion() );
trace( " ");
trace( "             OperatingSystem.name =", OperatingSystem.name );
trace( "         OperatingSystem.username =", OperatingSystem.username );
trace( "         OperatingSystem.nodename =", OperatingSystem.nodename );
trace( "         OperatingSystem.hostname =", OperatingSystem.hostname );
trace( "          OperatingSystem.release =", OperatingSystem.release );
trace( "          OperatingSystem.version =", OperatingSystem.version );
trace( "          OperatingSystem.machine =", OperatingSystem.machine );
trace( "           OperatingSystem.vendor =", OperatingSystem.vendor );
trace( "       OperatingSystem.vendorName =", OperatingSystem.vendorName );
trace( "    OperatingSystem.vendorVersion =", OperatingSystem.vendorVersion );
trace( "OperatingSystem.vendorDescription =", OperatingSystem.vendorDescription );
trace( "         OperatingSystem.codename =", OperatingSystem.codename );

