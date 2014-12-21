//
//  SettingsController.m
//  MOEW
//
//  Created by Ehab Amer on 4/15/14.
//  Copyright (c) 2014 LinkDev. All rights reserved.
//

#import "SettingsController.h"

@implementation SettingsController

static NSString *currentToken;
static NSString *notificationToken;
static int imageID;

+(void)saveWithKey:(NSString *)key andValue:(id)value
{
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    [prefs setObject:value forKey:key];
    
    if ([prefs synchronize]) {
		//NSLog(@"%@ saved",key);
	}else {
		NSLog(@"%@ NOT saved",key);
	}
}

+(NSString *)getValueWithKey:(NSString *)key
{
	NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
	if (![prefs objectForKey:key]) {
		return @"";
	}
	
    return [prefs objectForKey:key];
}

+(BOOL)isArabic
{
	NSString *val = [self getValueWithKey:@"isArabic"];
	return [val isEqualToString:@"YES"];
}

+(void)setIsArabic:(BOOL)isArabic
{
	if (isArabic) {
		[self saveWithKey:@"isArabic" andValue:@"YES"];
	}else{
		[self saveWithKey:@"isArabic" andValue:@"NO"];
	}
}

+(BOOL)isNotFirstTime
{
    NSString *val = [self getValueWithKey:@"isNotFirstTime"];
    return [val isEqualToString:@"YES"];
}

+(void)setIsNotFirstTime:(BOOL)isNotFirstTime
{
    if (isNotFirstTime) {
        [self saveWithKey:@"isNotFirstTime" andValue:@"YES"];
    }else{
        [self saveWithKey:@"isNotFirstTime" andValue:@"NO"];
    }
}

+(BOOL)hasLanguageSetting
{
	NSString *val = [self getValueWithKey:@"isArabic"];
	
	return !([val isEqualToString:@""]);
}

+(NSString *)getToken
{
	currentToken = [self getValueWithKey:@"UserToken"];
	
	if ([currentToken isEqualToString:@""]) {
		currentToken = nil;
	}
	
	if (currentToken) {
		return currentToken;
	}
	
	return @"00000000-0000-0000-0000-000000000000";
}

+(void)setToken:(NSString *)p_token
{
	currentToken = p_token;
	
	[self saveWithKey:@"UserToken" andValue:currentToken];
}

+(BOOL)isLoggedIn
{
	[self getToken];
	if (currentToken) {
		return YES;
	}
	return NO;
}

+(void)setAccountType:(NSString *)acntType
{
	[self saveWithKey:@"accountType" andValue:acntType];
//	accountType = acntType;
}

+(NSString *)getAccountType
{
	return [self getValueWithKey:@"accountType"];
}

+(void)setMobileNumber:(NSString *)mobileNumber
{
    [self saveWithKey:@"mobileNumber" andValue:mobileNumber];
}

+(NSString *)getMobileNumber
{
    return [self getValueWithKey:@"mobileNumber"];
}

+(void)setLatitude:(NSString *)latitude
{
    [self saveWithKey:@"latitude" andValue:latitude];
}

+(NSString *)getLatitude
{
    return [self getValueWithKey:@"latitude"];
}

+(void)setLongitude:(NSString *)longitude
{
    [self saveWithKey:@"longitude" andValue:longitude];
}

+(NSString *)getLongitude
{
    return [self getValueWithKey:@"longitude"];
}

+(void)setAddress:(NSString *)address
{
    [self saveWithKey:@"address" andValue:address];
}

+(NSString *)getAddress
{
    return [self getValueWithKey:@"address"];
}

+(void)logout
{
	[self saveWithKey:@"UserToken" andValue:@""];
	currentToken = nil;
}

+(void)setDeviceToken:(NSString *)deviceToken
{
	notificationToken = deviceToken;
}

+(NSString *)getDeviceToken
{
	return notificationToken;
}

+(NSString *)getUsername
{
	return [self getValueWithKey:@"username"];
}

+(NSString *)getPassword
{
	return [self getValueWithKey:@"password"];
}

+(void)setUsername:(NSString *)username
{
	[self saveWithKey:@"username" andValue:username];

}

+(void)setPassword:(NSString *)password
{
	[self saveWithKey:@"password" andValue:password];
}

+(void)setDisplayNames:(NSString *)arName :(NSString *)enName
{
	
	[self saveWithKey:@"userDisplayNameAr" andValue:arName];
	[self saveWithKey:@"userDisplayNameEn" andValue:enName];
}

+(NSString *)getDisplayNameAr
{
	return [self getValueWithKey:@"userDisplayNameAr"];
}

+(NSString *)getDisplayNameEn
{
	return [self getValueWithKey:@"userDisplayNameEn"];
}

+(int)getImageID
{
	return imageID;
}
+(void)setImageID:(int)imgID
{
	imageID = imgID;
}

@end
