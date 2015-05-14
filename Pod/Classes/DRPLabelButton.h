//
//  DRPLabelButton.h
//  StrangeExchange
//
//  Created by Jason Ederle on 12/1/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DRPLabelButton : UIControl
@property (readonly, nonatomic) UILabel *textLabel;
@property (nonatomic) UIColor *highlightColor;
@end
