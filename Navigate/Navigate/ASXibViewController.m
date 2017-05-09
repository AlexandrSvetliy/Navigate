//
//  ASXibViewController.m
//  Navigate
//
//  Created by Александр Светлый on 10.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASXibViewController.h"

@interface ASXibViewController ()
@property (strong, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation ASXibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawInit];
}
- (void)drawInit {
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
- (IBAction)backButtonPressed:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
