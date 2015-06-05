//
//  FYLoginTranslation.h
//  登陆转场
//
//  Created by fanyingzhao on 15/5/20.
//  Copyright (c) 2015年 fanyingzhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FYLoginTranslation : NSObject<UIViewControllerAnimatedTransitioning>

@property (assign, nonatomic) BOOL reverse;

- (instancetype)initWithView:(UIView*)btnView;
- (void)stopAnimation;
@end
