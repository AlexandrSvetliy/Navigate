//
//  ASSecondViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASSecondViewController.h"

@interface ASSecondViewController ()
@property (strong, nonatomic) IBOutlet UIButton *mainButton;
@property (strong, nonatomic) IBOutlet UIButton *backButton;
@end

@implementation ASSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
    [self.mainButton.layer setBorderWidth:1.0];
    [self.mainButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.mainButton.layer setCornerRadius:4.0];
    [self.mainButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.mainButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.mainButton.layer setShadowOpacity:0.5];
    
    [self.backButton.layer setBorderWidth:1.0];
    [self.backButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.backButton.layer setCornerRadius:4.0];
    [self.backButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.backButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.backButton.layer setShadowOpacity:0.5];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (IBAction)mainButtonPressed:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)backButtonPressed:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
