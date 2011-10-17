//
//  AlohaViewController.h
//  Aloha
//
//  Created by App on 2011/9/29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Waiter.h"

@interface AlohaViewController : UIViewController <UITextFieldDelegate>{
    UITextField *nameInputTextField;
    UILabel *sendText;
    NSString *nameText;
    Waiter *aWaiter;
}
@property (nonatomic, retain) IBOutlet UITextField *nameInputTextField;
@property (nonatomic, retain) IBOutlet UILabel *sendText;
- (IBAction)nameButtonPressed:(id)sender;
@end
