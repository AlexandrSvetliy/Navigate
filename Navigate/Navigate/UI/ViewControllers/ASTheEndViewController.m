//
//  ASTheEndViewController.m
//  Navigate
//
//  Created by Александр Светлый on 13.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASTheEndViewController.h"

@interface ASTheEndViewController ()
@property (strong, nonatomic) IBOutlet UIButton *theEndButton;
@end

@implementation ASTheEndViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
    [self.theEndButton.layer setBorderWidth:1.0];
    [self.theEndButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.theEndButton.layer setCornerRadius:4.0];
    [self.theEndButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.theEndButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.theEndButton.layer setShadowOpacity:0.5];
}

#pragma mark - Actions

- (IBAction)theEndButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
