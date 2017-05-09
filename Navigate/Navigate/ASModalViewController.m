//
//  ASModalViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASModalViewController.h"

@interface ASModalViewController ()
@property (strong, nonatomic) IBOutlet UIButton *closeButton;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;
@end

@implementation ASModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.messageLabel.text = self.senderMessage? :@"";
    [self drawInit];
}
- (void)drawInit {
    [self.closeButton.layer setBorderWidth:1.0];
    [self.closeButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.closeButton.layer setCornerRadius:4.0];
    [self.closeButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.closeButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.closeButton.layer setShadowOpacity:0.5];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)closeButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
