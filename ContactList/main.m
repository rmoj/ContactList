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
        
        
        NSString *usernameInput = [prompter inputForPrompt:@"Enter your username: "];
        
        NSLog(@"%@", usernameInput);
        
    }
    return 0;
}
