//
// VTAppButton.m
//
// Copyright (c) 2014-2018 Vincent Tourraine (http://www.vtourraine.net)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "VTAppButton.h"

@import QuartzCore;

const CGFloat VTAppButtonDefaultRadius       = 12;
const CGFloat VTAppButtonDefaultImagePadding = 8;
const CGFloat VTAppButtonDefaultFontSize     = 11;
const CGFloat VTAppButtonDefaultTitleHeight  = 20;
const CGFloat VTAppButtonDefaultTitleInsetX = -10;

@interface VTAppButton ()

@property (nonatomic, copy) NSString *appIdentifier;

@end


@implementation VTAppButton

+ (instancetype)appButtonWithAppIdentifier:(NSString *)appIdentifier
                                     title:(NSString *)title
                                     image:(UIImage *)image
{
    VTAppButton *appButton = [self buttonWithType:UIButtonTypeCustom];

    appButton.appIdentifier = appIdentifier;

    [appButton setTitle:title forState:UIControlStateNormal];
    [appButton setImage:image forState:UIControlStateNormal];

    return appButton;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self) {
        [self setTitleColor:UIColor.blackColor    forState:UIControlStateNormal];
        [self setTitleColor:UIColor.darkGrayColor forState:UIControlStateHighlighted];

        self.titleLabel.font = [UIFont systemFontOfSize:VTAppButtonDefaultFontSize];
    }

    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.imageView.layer.cornerRadius = VTAppButtonDefaultRadius;

    self.imageView.frame  = CGRectInset(CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetWidth(self.frame)),
                                        VTAppButtonDefaultImagePadding, VTAppButtonDefaultImagePadding);

    self.titleLabel.frame = CGRectInset(CGRectMake(0, CGRectGetMaxY(self.imageView.frame),
                                                   CGRectGetWidth(self.frame), VTAppButtonDefaultTitleHeight),
                                        VTAppButtonDefaultTitleInsetX, 0);
    if (@available(iOS 6.0, *)) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
}

@end
