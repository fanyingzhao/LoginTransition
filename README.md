# LoginTransition
LoginTransitionAnimation

#登陆时的按钮动画转场.

![GIF](https://github.com/fanyingzhao/LoginTransition/blob/master/Login.gif)


###使用方式
``` objc

// 初始化
self.translation = [[FYLoginTranslation alloc] initWithView:self.btn];

// 结束转场
[self.translation stopAnimation];

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    self.translation.reverse = YES;
    return self.translation;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    self.translation.reverse = NO;
    return self.translation;
}
```
