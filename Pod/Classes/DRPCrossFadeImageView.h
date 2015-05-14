//
//  DRPCrossFadeImageView.h
//
//  Created by Jason Ederle on 5/4/14.
//  Copyright (c) 2014 Jason Ederle. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIImage* (^DRPCrossFadeProcessingBlock)(UIImage * rawImage);

/** 
 * This class is integrated with SDWebImage to download the URL and perform a
 * fade-in when the image download completes. If the image is already cached
 * then the image is immediately displayed.
 */
@interface DRPCrossFadeImageView : UIView

// duration of fade-in effect
@property (readwrite) CGFloat crossFadeDuration;

// optional block to perform operation just before image is displayed
@property (copy, nonatomic) DRPCrossFadeProcessingBlock processingBlock;

// fetch image from URL and fade in once loaded (skips fade if found in cache)
- (void)setImageWithURL:(NSURL *)url;

// display image with optional crossfade
- (void)setImage:(UIImage *)image crossfade:(BOOL)fade;

@end
