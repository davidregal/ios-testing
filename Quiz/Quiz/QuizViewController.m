//
//  QuizViewController.m
//  Quiz
//
//  Created by David Regal on 1/5/14.
//  Copyright (c) 2014 David Regal. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (self) {
        currentQuestionIndex = 0;
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont"];
        [answers addObject:@"Montepelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }

}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        currentQuestionIndex = 0;
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont"];
        [answers addObject:@"Montepelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    currentQuestionIndex = currentQuestionIndex + 1;
    if ( currentQuestionIndex < 0 ||
        currentQuestionIndex >= [questions count] ) {
        currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    // Syntax for question[currentQuestionsIndex] is WRONG
    // labelQuestion.text = questions[currentQuestionIndex];
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"Displaying question: %@, at index: %d", question, currentQuestionIndex);
    NSLog(@"Displaying question: %@", [questions objectAtIndex:currentQuestionIndex]);
    NSLog(@"Array count: %d", [questions count]);
    
    // Display the string in the question label
    [labelQuestion setText:question];
    
    // Clear the answer field.
    // Note: Forgot to do this.
    [labelAnswer setText:@"?"];
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = @"";
    if ( currentQuestionIndex < 0 ||
        currentQuestionIndex >= [answers count]
        ) {
        // Error
        answer = [NSString stringWithFormat:@"Error. No answer for question %d", currentQuestionIndex ];
        
        // Stack overflow help:
        // NSString *theAnswer = [NSString stringWithFormat:@"The answer is %@", self.answer];
        
        // Syntax incorrect:
        // answer = printf("Error. No answer for question %d", currentQuestionIndex)
        
    }
    else {
        answer = [answers objectAtIndex:currentQuestionIndex];
    }
    // Log the string to the console
    NSLog(@"Displaying answer: %@", answer);
    
    // Display the string in the label
    [labelAnswer setText:answer];

}


@end
