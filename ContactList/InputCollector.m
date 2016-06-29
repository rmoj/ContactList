//
//  InputCollector.m
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector

-(void) displayMenu {
    NSLog(@"\nWhat would you like to do today?\n");
    NSLog(@"new - Create a new contact\n");
    NSLog(@"list - List all contacts\n");
    NSLog(@"quit - Exit application\n");
}


-(NSString *)inputForPrompt:(NSString *)promptString {
    
    char userPrompt[255];
    NSLog(@"\n%@", promptString);
    fgets(userPrompt, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:userPrompt];

    return [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
}

@end
