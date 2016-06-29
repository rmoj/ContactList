//
//  main.m
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        InputCollector *prompter = [[InputCollector alloc] init];
        
        NSMutableString *userInputMutable;

        while (!([userInputMutable isEqualToString:@"quit"])) {
            
            [prompter displayMenu];
            
            if ([userInputMutable isEqualToString:@"new"]) {
                
                NSLog(@"You chose new\n");
            }
            
            if ([userInputMutable isEqualToString:@"list"]) {
                
                NSLog(@"You chose list\n");
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
