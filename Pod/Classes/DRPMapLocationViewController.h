//
//  SWPLocationMapViewController.h
//  StrangeExchange
//
//  Created by Jason Ederle on 12/1/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DRPMapLocationViewController : UIViewController
@property (readonly, nonatomic) MKMapView *map;

- (id)initWithRegion:(MKCoordinateRegion)region title:(NSString *)title;

@end
