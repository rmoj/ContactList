//
//  main.m
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        InputCollector *prompter = [[InputCollector alloc] init];
        
        ContactList *myContactList = [[ContactList alloc] init];
        
        NSMutableString *userInputMutable;

        while (!([userInputMutable isEqualToString:@"quit"])) {
            
            [prompter displayMenu];
            
            if ([userInputMutable isEqualToString:@"new"]) {
                
                //NSLog(@"You chose new\n");
                Contact *newContact = [[Contact alloc] init];
                printf("\nEnter full name: ");
                NSMutableString *fullnameInput = [prompter getUserInput];
                newContact.fullName = fullnameInput;
                
                printf("\nEnter email address: ");
                NSMutableString *emailInput = [prompter getUserInput];
                newContact.fullName = emailInput;
                
                [myContactList addContact:newContact];
                
            }
            
            if ([userInputMutable isEqualToString:@"list"]) {
                
                //NSLog(@"You chose list\n");
                
            }
            
            userInputMutable = [prompter getUserInput];
            
            NSLog(@"%@", userInputMutable);
            
        //NSString *usernameInput = [prompter inputForPrompt:@"Enter your username: "];
        
        //NSLog(@"\n%@\n", usernameInput);
        }
        printf("\nAu Revoir!\n\n");
    }
    return 0;
}
