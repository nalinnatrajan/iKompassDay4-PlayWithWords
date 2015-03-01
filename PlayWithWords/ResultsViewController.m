//
//  ResultsViewController.m
//  PlayWithWords
//
//  Created by Nalin Natrajan on 1/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end


@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.resultsTextView.text = @"";
    NSAttributedString *nameAttributedString = [self getAttributedString:self.name];
    NSAttributedString *adverbAttributedString = [self getAttributedString:self.adverb];
    NSAttributedString *verbAttributedString = [self getAttributedString:self.verb];
    NSAttributedString *adjectiveAttributedString = [self getAttributedString:self.adjective];
    NSString *string = @"   home, and therefore had a very  day.";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    [attributedString insertAttributedString:nameAttributedString atIndex:0];
    [attributedString insertAttributedString:adverbAttributedString atIndex:1 + self.name.length];
    [attributedString insertAttributedString:verbAttributedString atIndex:2 + self.name.length + self.adverb.length];
    [attributedString insertAttributedString:adjectiveAttributedString atIndex:34 + self.name.length + self.adverb.length + self.verb.length];
    self.resultsTextView.attributedText = attributedString;


    /*self.resultsTextView.text = [NSString stringWithFormat: @"%@ %@ %@ home, and therefore had a very %@ day.", self.name, self.adverb, self.verb, self.adjective];*/
}

-(NSAttributedString *) getAttributedString:(NSString *)input {
    UIFont *font = self.resultsTextView.font;
    UIFontDescriptor *fontDescriptor = [font.fontDescriptor fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold];
    font = [UIFont fontWithDescriptor:fontDescriptor size:0];
    NSMutableAttributedString *inputAttributedString = [[NSMutableAttributedString alloc] initWithString:input];
    [inputAttributedString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0,inputAttributedString.length) ];
    return inputAttributedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
