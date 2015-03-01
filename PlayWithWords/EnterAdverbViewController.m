//
//  EnterAdverbViewController.m
//  PlayWithWords
//
//  Created by Nalin Natrajan on 1/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "EnterAdverbViewController.h"

@interface EnterAdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation EnterAdverbViewController

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
    if (self.adverbTextField.text.length == 0) {
        return NO;
    }
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultsViewController *destinationViewController = (ResultsViewController *)segue.destinationViewController;
    destinationViewController.name = self.name;
    destinationViewController.adverb = self.adverbTextField.text;
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
