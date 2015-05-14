//
//  SWPLocationMapViewController.m
//  StrangeExchange
//
//  Created by Jason Ederle on 12/1/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPMapLocationViewController.h"
#import <MapKit/MapKit.h>

@implementation DRPMapLocationViewController
{
  MKCoordinateRegion _region;
}

- (id)initWithRegion:(MKCoordinateRegion)region title:(NSString *)title
{
  self = [super init];
  if (self) {
    self.navigationItem.title = title;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                          target:self
                                                                                          action:@selector(didTapDone:)];
    _region = region;
    _map = [[MKMapView alloc] initWithFrame:CGRectZero];
  }
  return self;
}

- (void)loadView
{
  [_map setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
  self.view = _map;
}

- (void)viewWillAppear:(BOOL)animated
{
  [_map setRegion:_region animated:NO];
}

#pragma mark Actions

- (void)didTapDone:(id)sender
{
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
