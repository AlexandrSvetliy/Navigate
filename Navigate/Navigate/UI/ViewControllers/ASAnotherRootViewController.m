//
//  ASAnotherRootViewController.m
//  Navigate
//
//  Created by Александр Светлый on 12.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASAnotherRootViewController.h"

@interface ASAnotherRootViewController ()
@property (strong, nonatomic) IBOutlet UIButton *nextButton;
@end

@implementation ASAnotherRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
    [self.nextButton.layer setBorderWidth:1.0];
    [self.nextButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.nextButton.layer setCornerRadius:4.0];
    [self.nextButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.nextButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.nextButton.layer setShadowOpacity:0.5];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (IBAction)nextButtonPressed:(UIButton *)sender {
}

@end
