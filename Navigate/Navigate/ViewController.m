//
//  ViewController.m
//  Navigate
//
//  Created by Александр Светлый on 09.05.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "ViewController.h"
#import "ASXibViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *toFirstButton;
@property (strong, nonatomic) IBOutlet UIButton *toXibButton;
@property (strong, nonatomic) IBOutlet UIButton *toAnotherStoryButton;

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
    
    [self.toXibButton.layer setBorderWidth:1.0];
    [self.toXibButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toXibButton.layer setCornerRadius:4.0];
    [self.toXibButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.toXibButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toXibButton.layer setShadowOpacity:0.5];
    
    [self.toAnotherStoryButton.layer setBorderWidth:1.0];
    [self.toAnotherStoryButton.layer setBorderColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toAnotherStoryButton.layer setCornerRadius:4.0];
    [self.toAnotherStoryButton.layer setShadowOffset:CGSizeMake(2, 4)];
    [self.toAnotherStoryButton.layer setShadowColor:[[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0] CGColor]];
    [self.toAnotherStoryButton.layer setShadowOpacity:0.5];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)toFirstButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"sequeToFirstController" sender:self];
}
- (IBAction)toXibButtonPressed:(UIButton *)sender {
    ASXibViewController *viewController = [[ASXibViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.title = NSStringFromClass(ASXibViewController.class);
}
- (IBAction)toAnotherButtonPressed:(UIButton *)sender {
}


@end
