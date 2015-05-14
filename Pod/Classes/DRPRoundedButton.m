//
//  DRPRoundedButton.m
//  Comment Box
//
//  Created by Jason Ederle on 9/13/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPRoundedButton.h"

static const CGFloat kSmallRoundedCorner = 5;
static const CGFloat kBorderLineWidth = 2;

@implementation DRPRoundedButton

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    _backgroundColor = [UIColor blueColor];
    _borderColor = [UIColor whiteColor];
    self.clipsToBounds = YES;
    _style = kDRPRoundedButtonCornerRadiusStyleOval;
    _borderLineWidth = kBorderLineWidth;
  }
  return self;
}

- (void)setFrame:(CGRect)frame
{
  [super setFrame:frame];
  
  self.layer.cornerRadius = [self _cornerRadiusForStyle:_style];
}

- (CGFloat)_cornerRadiusForStyle:(DRPRoundedButtonCornerRadiusStyle)style
{
  if (style == kDRPRoundedButtonCornerRadiusStyleOval) {
    return ceilf(CGRectGetHeight(self.frame) / 2);
  } else if (style == kDRPRoundedButtonCornerRadiusStyleSmall) {
    return kSmallRoundedCorner;
  } else {
    return 0;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  [super setHighlighted:highlighted];
  [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  [super drawRect:rect];
  
  CGFloat cornerRadius = [self _cornerRadiusForStyle:_style];
  UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:cornerRadius];
  [path setLineWidth:_borderLineWidth];

  if (self.highlighted) {
    [[_backgroundColor colorWithAlphaComponent:.8] setFill];
  } else {
    [_backgroundColor setFill];
  }
  
  [path fill];
  
  if (_borderColor) {
    [_borderColor setStroke];
    [path stroke];
  }
}

- (CGSize)sizeThatFits:(CGSize)size
{
  CGSize fitSize = [super sizeThatFits:size];
  fitSize.width += 20;
  return fitSize;
}

@end
