NSString+MD5NSString
=============

A NSString Category for generating MD5 Hash from NSSting

## Preview

![NSString+MD5NSString Screenshot](http://assets.vaibhavnath.com/MD5NSString-Screenshot.png)

## Features

- Category based for easy usage with existing code
- Uses native CommonDigest's class for generating hash, hence has less Energy Impact

## Usage

1. Add NSString+MD5NSString Folder to Project (Preferred to 'Use Groups' and 'Copy Items if Needed').
2. Import Category and Use with NSString Objects.

## Example

**Code:**

```objc
#import "NSString+MD5NSString.h"

NSString *inputStr = @"sampler";
NSLog(@"MD5 of \"%@\" :-\n%@", inputStr, [inputStr getMD5OfNSString]);
```