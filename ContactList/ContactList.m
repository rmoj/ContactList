//
//  ContactList.m
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init {
    
    if (self) {
    
        _storage = [[NSMutableArray alloc] init];
    
    }
    

    return self;
}

-(void)addContact:(Contact *)newContact {

    [self.storage addObject:newContact];

}


@end
