//
//  QuizViewController.h
//  Quiz
//
//  Created by David Regal on 1/5/14.
//  Copyright (c) 2014 David Regal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController {
    int currentQuestionIndex;
    
    // Model ivars
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // View ivars
    IBOutlet UILabel *labelQuestion;
    IBOutlet UILabel *labelAnswer;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
