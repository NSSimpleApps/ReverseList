//
//  Node.m
//  ListReverse
//
//  Created by NSSimpleApps on 22.05.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import "Node.h"
#import <objc/runtime.h>

@implementation Node

- (instancetype)initWithTag:(NSInteger)tag {
    
    self = [super init];
    
    if (self) {
        
        self.tag = tag;        
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    
    Node *newNode = [[self class] allocWithZone:zone];
    newNode.tag = self.tag;
    newNode.next = nil;
    
    return newNode;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"Node with tag = %ld", (long)self.tag];
}

- (BOOL)isEqual:(id)object {
    
    if ([object isKindOfClass:[self class]]) {
        
        Node *node = object;
        
        return self.tag == node.tag;
    }
    return [super isEqual:object];
}

- (void)dealloc {
    
    NSLog(@"Deallocating node with tag = %ld", (long)self.tag);
}

@end
