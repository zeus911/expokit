/*
	OTA_PingSudzc.m
	Creates a list of the services available with the OTA_Ping prefix.
	Generated by SudzC.com
*/
#import "OTA_PingSudzc.h"

@implementation OTA_PingSudzC

@synthesize logging, server, defaultServer;

@synthesize oTA_Ping;


#pragma mark Initialization

-(id)initWithServer:(NSString*)serverName{
	if(self = [self init]) {
		self.server = serverName;
	}
	return self;
}

+(OTA_PingSudzC*)sudzc{
	return (OTA_PingSudzC*)[[[OTA_PingSudzC alloc] init] autorelease];
}

+(OTA_PingSudzC*)sudzcWithServer:(NSString*)serverName{
	return (OTA_PingSudzC*)[[[OTA_PingSudzC alloc] initWithServer:serverName] autorelease];
}

#pragma mark Methods

-(void)setLogging:(BOOL)value{
	logging = value;
	[self updateServices];
}

-(void)setServer:(NSString*)value{
	[server release];
	server = [value retain];
	[self updateServices];
}

-(void)updateServices{

	[self updateService: self.oTA_Ping];
}

-(void)updateService:(SoapService*)service{
	service.logging = self.logging;
	if(self.server == nil || self.server.length < 1) { return; }
	service.serviceUrl = [service.serviceUrl stringByReplacingOccurrencesOfString:defaultServer withString:self.server];
}

#pragma mark Getter Overrides


-(OTA_PingOTA_Ping*)oTA_Ping{
	if(oTA_Ping == nil) {
		oTA_Ping = [[OTA_PingOTA_Ping alloc] init];
	}
	return oTA_Ping;
}


@end
			