//
//  ASFirstViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ASFirstViewController.h"
#import "ASModalViewController.h"
static NSString* const ASShowModalSeque = @"showModalSeque";
static NSString* const ASSecondControllerSeque = @"showSecondSeque";

@interface ASFirstViewController ()
@property (strong, nonatomic) IBOutlet UIButton *toSecondButton;
@property (strong, nonatomic) IBOutlet UITextField *modalMessage;
@end

@implementation ASFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    [self drawInit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)drawInit {
    [self.toSecondButton.layer setBorderWidth:1.0];
    [self.toSecondButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toSecondButton.layer setCornerRadius:4.0];
    [self.toSecondButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.toSecondButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toSecondButton.layer setShadowOpacity:0.5];
}

#pragma mark - Actions

- (IBAction)toSecondButtonPressed:(UIButton *)sender {
}
- (IBAction)toModalButtonPressed:(id)sender {
    [self performSegueWithIdentifier:ASShowModalSeque sender:self.modalMessage.text];
}
- (void)dismissKeyboard {
    [self.modalMessage resignFirstResponder];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:ASShowModalSeque] && [sender isKindOfClass:[NSString class]]) {
        [(ASModalViewController *)[segue destinationViewController] setSenderMessage:sender];
    }
    if ([[segue identifier] isEqualToString:ASSecondControllerSeque]) {
        segue.destinationViewController.title = @"Second";
    }
}


@end
