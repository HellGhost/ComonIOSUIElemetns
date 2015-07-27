//
//  RadioButton.h
//  Fring
//
//  Created by hell_ghost on 27.07.15.
//  Copyright (c) 2015 fring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HGRadioButton : UIButton
@property (strong, nonatomic) UIColor *borderColor;
@property (strong, nonatomic) UIColor *toggleColor;
@property (assign, nonatomic) BOOL toggled;
@end
