//
//  EnterAdjectiveViewController.h
//  PlayWithWords
//
//  Created by Nalin Natrajan on 1/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultsViewController.h"
@interface EnterAdjectiveViewController : UIViewController<UITextFieldDelegate>

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *verb;
@property(strong, nonatomic) NSString *adverb;


@end
