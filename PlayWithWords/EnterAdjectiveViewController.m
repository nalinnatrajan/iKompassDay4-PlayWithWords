//
//  EnterAdjectiveViewController.m
//  PlayWithWords
//
//  Created by Nalin Natrajan on 1/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "EnterAdjectiveViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nextButton.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.adjectiveTextField.text.length == 0) {
        return NO;
    }
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultsViewController *destinationViewController = (ResultsViewController *)segue.destinationViewController;
    destinationViewController.name = self.name;
    destinationViewController.adverb = self.adverb;
    destinationViewController.verb = self.verb;
    destinationViewController.adjective = self.adjectiveTextField.text;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *oldText = textField.text;
    NSString *newText = [oldText stringByReplacingCharactersInRange:range withString:string];
    self.nextButton.enabled = newText.length > 0;
    return TRUE;
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
