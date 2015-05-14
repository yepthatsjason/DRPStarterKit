//
//  DRPFont.m
//  StrangeExchange
//
//  Created by Jason Ederle on 12/2/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPFont.h"

@implementation DRPFont

+ (UIFont *)mediumFontOfSize:(CGFloat)size
{
  return [UIFont fontWithName:@"HelveticaNeue-Medium" size:size];
}

+ (UIFont *)regularFontOfSize:(CGFloat)size
{
  return [UIFont fontWithName:@"HelveticaNeue" size:size];
}

@end
