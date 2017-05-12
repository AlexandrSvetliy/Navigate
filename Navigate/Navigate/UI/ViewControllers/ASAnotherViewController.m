//
//  ASAnotherViewController.m
//  Navigate
//
//  Created by Александр Светлый on 10.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASAnotherViewController.h"

@interface ASAnotherViewController ()
@property (strong, nonatomic) IBOutlet UIButton *backButton;
@property (strong, nonatomic) IBOutlet UIButton *tabBarButton;
@end

@implementation ASAnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
    [self.tabBarButton.layer setBorderWidth:1.0];
    [self.tabBarButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.tabBarButton.layer setCornerRadius:4.0];
    [self.tabBarButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.tabBarButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.tabBarButton.layer setShadowOpacity:0.5];
    
    [self.backButton.layer setBorderWidth:1.0];
    [self.backButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.backButton.layer setCornerRadius:4.0];
    [self.backButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.backButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.backButton.layer setShadowOpacity:0.5];
}

#pragma mark - Actions

- (IBAction)backButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)toTabBarButtonPressed:(UIButton *)sender {
    
}

@end
