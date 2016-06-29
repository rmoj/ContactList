//
//  ContactList.h
//  ContactList
//
//  Created by Rene Mojica on 2016-06-28.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, readwrite) NSMutableArray* storage;


-(void)addContact:(Contact *)newContact;


@end
