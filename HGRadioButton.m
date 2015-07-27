//
//  RadioButton.m
//  Fring
//
//  Created by hell_ghost on 27.07.15.
//  Copyright (c) 2015 fring. All rights reserved.
//

#import "HGRadioButton.h"

@implementation HGRadioButton

- (void)setToggleColor:(UIColor *)toggleColor {
    _toggleColor = toggleColor;
    [self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    [self setNeedsDisplay];
}

- (void)setToggled:(BOOL)toggled {
    _toggled = toggled;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    self.backgroundColor = [UIColor clearColor];
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    CGContextSetStrokeColorWithColor(context, self.borderColor.CGColor);
    CGRect strokeRect = CGRectInset(rect, 1, 1);
    CGContextStrokeEllipseInRect(context, strokeRect);
    if (self.toggled) {
        CGContextSetFillColorWithColor(context, self.toggleColor.CGColor);
        CGRect toggleRect = CGRectInset(strokeRect, 2, 2);
        CGContextFillEllipseInRect(context, toggleRect);
    }
}

@end
