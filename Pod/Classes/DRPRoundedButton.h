//
//  DRPRoundedButton.h
//  Comment Box
//
//  Created by Jason Ederle on 9/13/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DRPRoundedButtonCornerRadiusStyle)
{
  kDRPRoundedButtonCornerRadiusStyleOval,
  kDRPRoundedButtonCornerRadiusStyleSmall
};

// adds a rounded solid background to a button
@interface DRPRoundedButton : UIButton
@property (strong, nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) UIColor *borderColor;
@property (nonatomic) CGFloat borderLineWidth;
@property (nonatomic) DRPRoundedButtonCornerRadiusStyle style; // default is kDRPRoundedButtonCornerRadiusStyleOval

@end
