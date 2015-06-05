//
//  ViewController.m
//  LoginTransition
//
//  Created by fanyingzhao on 15/6/5.
//  Copyright (c) 2015年 fanyingzhao. All rights reserved.
//

#import "ViewController.h"
#import "FYLoginTranslation.h"
#import "SecondViewController.h"

@interface ViewController ()<UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UIButton* btn;
@property (strong, nonatomic) FYLoginTranslation* login;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}

- (void)finishTransition
{
    [self.login stopAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressBtn:(id)sender
{
    SecondViewController* secondVC = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    secondVC.transitioningDelegate = self;
    [self presentViewController:secondVC animated:YES completion:nil];
    
    [self performSelector:@selector(finishTransition) withObject:nil afterDelay:2];
}

- (FYLoginTranslation *)login
{
    if (!_login) {
        _login = [[FYLoginTranslation alloc] initWithView:self.btn];
    }
    return _login;
}

#pragma mark UIViewControllerTransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    self.login.reverse = YES;
    return self.login;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    self.login.reverse = NO;
    return self.login;
}
@end
