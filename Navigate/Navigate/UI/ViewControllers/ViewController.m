//
//  ViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonsCollection;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"MAIN VIEW";
    [self drawInit];
}
- (void)drawInit {
    UINavigationBar *navBar = self.navigationController.navigationBar;
    [navBar setBarTintColor:[UIColor colorWithRed:0.17 green:0.00 blue:0.12 alpha:1.0]];
    [navBar setTintColor:[UIColor colorWithRed:0.93 green:0.46 blue:0.30 alpha:1.0]];
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.95 green:0.91 blue:0.94 alpha:1.0]}];
    navBar.translucent = NO;
    navBar.barStyle = UIStatusBarStyleLightContent;
    
    [self.buttonsCollection enumerateObjectsUsingBlock:^(UIButton* button, NSUInteger idx, BOOL *stop) {
        [button.layer setBorderWidth:1.0];
        [button.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
        [button.layer setCornerRadius:4.0];
        [button.layer setShadowOffset:CGSizeMake(2, 4)];
        [button.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
        [button.layer setShadowOpacity:0.5];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)toFirstButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"sequeToFirstController" sender:self];
}
- (IBAction)toXibButtonPressed:(UIButton *)sender {
    ASXibViewController *viewController = [[ASXibViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.title = NSStringFromClass(ASXibViewController.class);
}
- (IBAction)toAnotherButtonPressed:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AnotherStoryboard" bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"ASAnotherViewControllerID"];
    viewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:viewController animated:YES completion:NULL];
}

@end
