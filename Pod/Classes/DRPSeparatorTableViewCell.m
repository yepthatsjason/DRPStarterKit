//
//  DRPSeparatorTableViewCell.m
//  StrangeExchange
//
//  Created by Jason Ederle on 11/29/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import "DRPSeparatorTableViewCell.h"
#import <DRPBase/UIColor+Hex.h>

@implementation DRPSeparatorTableViewCell
{
  UIView *_bottomSeparatorView;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    _color = [UIColor colorWithHex:0xF3F3F3];
    _showsBottomSeparator = YES;
    _insets = UIEdgeInsetsMake(0, 10, 0, 10);
    _bottomSeparatorView = [[UIView alloc] initWithFrame:CGRectZero];
    _bottomSeparatorView.backgroundColor = _color;
    [self.contentView addSubview:_bottomSeparatorView];
    _height = 1 / [[UIScreen mainScreen] scale];
  }
  return self;
}

- (void)setColor:(UIColor *)color
{
  _color = color;
  _bottomSeparatorView.backgroundColor = color;
}

- (void)setShowsBottomSeparator:(BOOL)showsBottomSeparator
{
  _bottomSeparatorView.hidden = !showsBottomSeparator;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  
  _bottomSeparatorView.frame = CGRectMake(_insets.left,
                                          CGRectGetHeight(self.bounds) - _height,
                                          CGRectGetWidth(self.bounds) - _insets.left - _insets.right,
                                          _height);
}


@end
