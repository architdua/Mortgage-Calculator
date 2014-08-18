//
//  ViewController.m
//  Mortgage Calculator
//
//  Created by Archit Dua on 8/17/14.
//  Copyright (c) 2014 Archit Dua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize propertyValue;
@synthesize annualInterestRate;
@synthesize downPayment;
@synthesize loanDuration;
@synthesize monthlyPayment;
@synthesize propertyTax;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*- (double)calculate
{
    // get values from text fields
    NSString *pV = self.propertyValue.text;
    double pValue = [pV doubleValue];
    
    NSString *aIR = self.annualInterestRate.text;
    double aInterestRate = [aIR doubleValue];
    
    NSString *dP = self.downPayment.text;
    double dPayment = [dP doubleValue];
    
    NSString *lD = self.loanDuration.text;
    double lDuration = [lD doubleValue];
    
    NSString *pT = self.propertyTax.text;
    double pTax = [pT doubleValue];
    
    double downPay = dPayment/100.0 *pValue;
    double loanPayment = pValue - downPay;
    double monthlyInterestRate = aInterestRate/100/12;
    double monthPayment = loanPayment *monthlyInterestRate/ (1-1/pow(1+monthlyInterestRate, lDuration*12));
    double propertyTaxPayment = pValue * pTax/100/12;
    double monthPaymentWithTax = propertyTaxPayment +monthPayment;
    return monthPaymentWithTax;
}*/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([propertyValue isFirstResponder] && [touch view] != propertyValue) {
        [propertyValue resignFirstResponder];
    }
    if ([annualInterestRate isFirstResponder] && [touch view] != annualInterestRate) {
            [annualInterestRate resignFirstResponder];
    }
    if ([downPayment isFirstResponder] && [touch view] != downPayment) {
            [downPayment resignFirstResponder];
    }
    if ([loanDuration isFirstResponder] && [touch view] != loanDuration) {
            [loanDuration resignFirstResponder];
    }
    if ([monthlyPayment isFirstResponder] && [touch view] != monthlyPayment) {
            [monthlyPayment resignFirstResponder];
    }
    if ([propertyTax isFirstResponder] && [touch view] != propertyTax) {
            [propertyTax resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}


- (IBAction)calc:(id)sender {
    NSString *pV = self.propertyValue.text;
    double pValue = [pV doubleValue];
    
    NSString *aIR = self.annualInterestRate.text;
    double aInterestRate = [aIR doubleValue];
    
    NSString *dP = self.downPayment.text;
    double dPayment = [dP doubleValue];
    
    NSString *lD = self.loanDuration.text;
    double lDuration = [lD doubleValue];
    
    NSString *pT = self.propertyTax.text;
    double pTax = [pT doubleValue];
    
    double downPay = dPayment/100.0 *pValue;
    double loanPayment = pValue - downPay;
    double monthlyInterestRate = aInterestRate/100/12;
    double monthPayment = loanPayment *monthlyInterestRate/ (1-1/pow(1+monthlyInterestRate, lDuration*12));
    double propertyTaxPayment = pValue * pTax/100/12;
    double monthPaymentWithTax = propertyTaxPayment +monthPayment;
    NSString* string = [NSString stringWithFormat:@"%f", monthPaymentWithTax];
    self.monthlyPayment.text = string;
}

- (IBAction)clear:(id)sender {
    self.propertyValue.text = @"";
    self.annualInterestRate.text = @"";
    self.downPayment.text = @"";
    self.propertyTax.text = @"";
    self.loanDuration.text = @"";
    self.monthlyPayment.text = @"";
}
@end
