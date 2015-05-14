//
//  DRPMapLocationPin.m
//  StrangeExchange
//
//  Created by Jason Ederle on 12/1/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPMapLocationPin.h"

@implementation DRPMapLocationPin
{
  CLLocationCoordinate2D _coordinate;
  NSString *_title;
  NSString *_subtitle;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate
                   title:(NSString *)title
                subtitle:(NSString *)subtitle
{
  self = [super init];
  if (self) {
    _coordinate = coordinate;
    _title = title;
    _subtitle = subtitle;
  }
  return self;
}

- (CLLocationCoordinate2D)coordinate
{
  return _coordinate;
}

- (NSString *)title
{
  return _title;
}

- (NSString *)subtitle
{
  return _subtitle;
}

@end
