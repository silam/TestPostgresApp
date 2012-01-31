#import <Foundation/Foundation.h>
#import <PostgresClientKit/PostgresClientKit.h>
//#import </Users/silam/Documents/TestPostgresApp/PostgresClientKit.framework/Versions/A/Headers/PostgresClientKit.h"

int main(int argc, char** argv) {
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSURL* theURL = [NSURL URLWithString:@"pgsql://user@localhost/database/"];
	
	
	
	FLXPostgresConnection* theClient = [FLXPostgresConnection connectionWithURL:theURL];
	
	@try {
		[theClient connectWithPassword:@"..."];
	} @catch(NSException* theException) {
		// error
	}
	
	[theClient release];
	[pool release];
	return 0;
}
