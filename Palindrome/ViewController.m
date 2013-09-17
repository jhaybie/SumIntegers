//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 4/28/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    int result;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

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

-(void)showIsPalindrone
{
    resultLabel.text = @"IS a palindrone!";
}

-(void)showIsNotPalindrone
{
    resultLabel.text = @"IS NOT a palindrone!";
}


-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}


-(void)showResult
{
    resultLabel.text = [NSString stringWithFormat:@"%i", result];
}


/*-(void)checkForPalindrome
{
    const char* arrayOfCharacters = [self getCharacterArray];
    BOOL isPalindrome = YES;
    
    

}*/


-(void)sumIntegers
{
    const char* arrayOfCharacters = [self getCharacterArray];
    
    int i = 0;
    
    while (i < strlen(arrayOfCharacters))
    {
        int c = 0;     // resets the variable (if containing a previous non-zero value)
        char n = arrayOfCharacters[i];
        // checking for numerals and ignoring non-numeric characters
        if (n=='1' || n=='2' || n=='3' || n=='4' || n=='5' || n=='6' || n=='7' || n=='8' || n=='9' || n=='0')
        {
            c = atoi(&arrayOfCharacters[i]); //converts the char into its numerical value
            result += c;
        }
        i++;
    }
    
    [self showResult];
}

- (IBAction)check:(id)sender
{
    //[self checkForPalindrome];
    
    // Uncomment the following line of code and comment out the previous line of code to run summation
    [self sumIntegers];
}
@end
