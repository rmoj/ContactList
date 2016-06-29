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
    printf("\nWhat would you like to do today?\n");
    printf("new - Create a new contact\n");
    printf("list - List all contacts\n");
    printf("quit - Exit application\n");
    printf("Enter choice: ");
}


-(NSString *)inputForPrompt:(NSString *)promptString {

    return [promptString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSMutableString *)getUserInput {

    char userInput[255];
    fgets(userInput, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:userInput];
    
    return [[inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] mutableCopy];

    
}

/*
char userPrompt[255];
NSLog(@"\n%@", promptString);
fgets(userPrompt, 255, stdin);
NSString *inputString = [NSString stringWithUTF8String:userPrompt];

return [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];

*/
@end
