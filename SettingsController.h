//
//  SettingsController.h
//  MOEW
//
//  Created by Ehab Amer on 4/15/14.
//  Copyright (c) 2014 LinkDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsController : NSObject
{
	
}

+(void)saveWithKey:(NSString *)key andValue:(id)value;
+(NSString *)getValueWithKey:(NSString *)key;

+(BOOL)isArabic;
+(void)setIsArabic:(BOOL)isArabic;
+(BOOL)hasLanguageSetting;
+(NSString *)getToken;
+(void)setToken:(NSString *)p_token;
+(BOOL)isLoggedIn;
+(void)logout;
+(void)setDeviceToken:(NSString *)deviceToken;
+(NSString *)getDeviceToken;
+(void)setAccountType:(NSString *)acntType;
+(NSString *)getAccountType;
+(void)setMobileNumber:(NSString *)mobileNumber;
+(NSString *)getMobileNumber;

+(void)setLongitude:(NSString *)longitude;
+(NSString *)getLongitude;

+(void)setLatitude:(NSString *)latitude;
+(NSString *)getLatitude;

+(void)setAddress:(NSString *)address;
+(NSString *)getAddress;

+(void)setIsNotFirstTime:(BOOL)isNotFirstTime;
+(BOOL)isNotFirstTime;

+(NSString *)getUsername;
+(NSString *)getPassword;
+(void)setUsername:(NSString *)username;
+(void)setPassword:(NSString *)password;

+(void)setDisplayNames:(NSString *)arName :(NSString *)enName;
+(NSString *)getDisplayNameAr;
+(NSString *)getDisplayNameEn;
+(int)getImageID;
+(void)setImageID:(int)imgID;

@end
