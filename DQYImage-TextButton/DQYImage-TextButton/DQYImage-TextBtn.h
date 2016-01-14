//
//  DQYImage-TextBtn.h
//  DQYImage-TextButton
//
//  Created by mac on 16/1/14.
//  Copyright © 2016年 dqy. All rights reserved.
//

#import <UIKit/UIKit.h>

//imageview's width
#define ImageWidth 30
#define ImageHeight 30




@interface DQYImage_TextBtn : UIView


- (void)addTarget:(nullable id) target action:(nonnull SEL)action forControlEvents:(UIControlEvents)controlEvents;


#pragma mark ---------------------------

- (void)setImage:(UIImage *) image;

- (void)setTitle:(NSString *) title;
@end
