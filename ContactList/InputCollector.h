//
//  InputCollector.h
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface InputCollector : NSObject

-(void) displayMenu;
-(NSMutableString *)getUserInput;
-(NSString *)inputForPrompt:(NSString *)promptString;


@end
