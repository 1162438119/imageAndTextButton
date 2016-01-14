//
//  DQYImage-TextBtn.m
//  DQYImage-TextButton
//
//  Created by mac on 16/1/14.
//  Copyright © 2016年 dqy. All rights reserved.
//

#import "DQYImage-TextBtn.h"



@interface DQYImage_TextBtn ()
{
    //对象
    id _target;
    
    //方法选择器
    SEL _selector;
    
    //状态
    UIControlEvents _uiControlEvent;
    
    //图片
    UIImageView * _imageView;
    
    //文本
    UILabel * _titleLabel;
    
}
@end

@implementation DQYImage_TextBtn

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, (frame.size.height - ImageHeight) / 2, ImageHeight, ImageWidth)];
        [self addSubview:_imageView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(ImageWidth,(frame.size.height - 20) / 2, frame.size.width - ImageWidth, 20)];
        
        [self addSubview:_titleLabel];
        
    }
    
    return self;
}






#pragma mark ---------------------- get a action
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (_uiControlEvent == UIControlEventTouchUpInside) {
    
        [_target performSelector:_selector withObject:self];
    }
    
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
}



- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents {
    
    _target = target;
    _selector = action;
    _uiControlEvent = controlEvents;
    
}


#pragma mark -------------------------
- (void)setImage:(UIImage *)image {
    
    _imageView.image = image;
}

- (void)setTitle:(NSString *)title {
    
    _titleLabel.text = title;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
