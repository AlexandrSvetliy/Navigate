//
//  ASSecondViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASSecondViewController.h"

@interface ASSecondViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonsCollection;
@end

@implementation ASSecondViewController

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
