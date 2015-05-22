//
//  Node.h
//  ListReverse
//
//  Created by NSSimpleApps on 22.05.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (assign, nonatomic) NSInteger number;

@property (weak, nonatomic) Node *next;

@end
