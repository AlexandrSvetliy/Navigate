//
//  ViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *toFirstButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"MAIN VIEW";
    [self drawInit];
}
- (void)drawInit {
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.17 green:0.00 blue:0.12 alpha:1.0]];
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:0.93 green:0.46 blue:0.30 alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:0.95 green:0.91 blue:0.94 alpha:1.0]}];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    [self.toFirstButton.layer setBorderWidth:1.0];
    [self.toFirstButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toFirstButton.layer setCornerRadius:4.0];
    [self.toFirstButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.toFirstButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toFirstButton.layer setShadowOpacity:0.5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toFirstButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"sequeToFirstController" sender:self];
}


@end
