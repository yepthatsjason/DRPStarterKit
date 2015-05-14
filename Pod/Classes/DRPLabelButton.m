//
//  DRPLabelButton.m
//  StrangeExchange
//
//  Created by Jason Ederle on 12/1/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPLabelButton.h"

@implementation DRPLabelButton
{
  UIColor *_normalColor;
}

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _highlightColor = [UIColor blueColor];
    [self addSubview:_textLabel];
  }
  return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self.isHighlighted == highlighted) {
    return;
  }
  
  [super setHighlighted:highlighted];
 
  if (highlighted) {
    _normalColor = _textLabel.textColor;
    _textLabel.textColor = _highlightColor;
  } else {
    _textLabel.textColor = _normalColor;
  }
}

- (void)layoutSubviews
{
  _textLabel.frame = self.bounds;
}

- (CGSize)sizeThatFits:(CGSize)size
{
  return [_textLabel sizeThatFits:size];
}

@end
