//
//  AlohaViewController.m
//  Aloha
//
//  Created by App on 2011/9/29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "AlohaViewController.h"

@implementation AlohaViewController
@synthesize nameInputTextField;
@synthesize sendText;

- (void)dealloc
{
    [nameInputTextField release];
    [sendText release];
    [super dealloc];
}
- (IBAction)nameButtonPressed:(id)sender
{
    nameText = nameInputTextField.text;
    NSLog(@"%@",nameText);
    //sendText.text = [NSString stringWithFormat:@"Aloha ,%@!",nameText];
     sendText.text = [aWaiter sayHelloWithName:nameText];
    nameInputTextField.text = @"";
    [nameInputTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self nameButtonPressed:self];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [nameInputTextField setDelegate:self];
     aWaiter = [[Waiter alloc] init];
}

- (void)viewDidUnload
{
    [self setNameInputTextField:nil];
    [self setSendText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
