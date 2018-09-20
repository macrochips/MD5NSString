//
//  NSString+MD5NSString.m
//  MD5NSStringExample
//
//  Created by Vaibhav Nath on 12/08/15.
//  Copyright © 2015 Vaibhav Nath. All rights reserved.
//

#import <CommonCrypto/CommonDigest.h>
#import "NSString+MD5NSString.h"

@implementation NSString (MD5NSString)

- (NSString *)getMD5OfNSString
{
    const char *ptr = [self UTF8String];
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(ptr, (CC_LONG)strlen(ptr), md5Buffer);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x",md5Buffer[i]];
    
    return output;
}
@end
