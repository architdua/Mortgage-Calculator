//
//  ViewController.h
//  Mortgage Calculator
//
//  Created by Archit Dua on 8/17/14.
//  Copyright (c) 2014 Archit Dua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *propertyValue;
@property (weak, nonatomic) IBOutlet UITextField *annualInterestRate;
@property (weak, nonatomic) IBOutlet UITextField *downPayment;
@property (weak, nonatomic) IBOutlet UITextField *propertyTax;
@property (weak, nonatomic) IBOutlet UITextField *loanDuration;
@property (weak, nonatomic) IBOutlet UITextField *monthlyPayment;
- (IBAction)calc:(id)sender;
- (IBAction)clear:(id)sender;

@end
