//
//  ASAnotherViewController.m
//  Navigate
//
//  Created by Александр Светлый on 10.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASAnotherViewController.h"

@interface ASAnotherViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonsCollection;
@end

@implementation ASAnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
    [self.buttonsCollection enumerateObjectsUsingBlock:^(UIButton* button, NSUInteger idx, BOOL *stop) {
        [button.layer setBorderWidth:1.0];
        [button.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
        [button.layer setCornerRadius:4.0];
        [button.layer setShadowOffset:CGSizeMake(2, 4)];
        [button.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
        [button.layer setShadowOpacity:0.5];
    }];
}

#pragma mark - Actions

- (IBAction)backButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)toTabBarButtonPressed:(UIButton *)sender {
    
}

@end
