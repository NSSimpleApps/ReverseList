//
//  LinkedList.m
//  ListReverse
//
//  Created by NSSimpleApps on 29.08.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import "LinkedList.h"
#import "NodeProtocol.h"

@interface LinkedList ()

@property (strong, nonatomic, nullable) id<NodeProtocol> first;

@end

@implementation LinkedList

- (nonnull instancetype)initWithNode:(nonnull id<NodeProtocol>)node {
    
    self = [super init];
    
    if (self) {
            
        self.first = [node copyWithZone:nil];
        self.first.next = nil;
    }
    return self;
}

- (void)add:(nonnull id<NodeProtocol>)node {
    
    if (!self.first) {
        
        self.first = [node copyWithZone:nil];
        self.first.next = nil;
        return;
    }
    
    id<NodeProtocol> lastNode = self.first;
    
    while (lastNode.next) {
        
        lastNode = lastNode.next;
    }
    lastNode.next = [node copyWithZone:nil];
    lastNode.next.next = nil;
}

- (void)removeNode:(nonnull id<NodeProtocol>)node {
    
    if ([node isEqual:self.first]) {
                
        [self removeFirstNode];
        return;
    }
    
    id<NodeProtocol> previousNode = self.first;
    id<NodeProtocol> currentNode = previousNode.next;
    
    while (currentNode) {
        
        id<NodeProtocol> nextNode = currentNode.next;
        
        if ([currentNode isEqual:node]) {
            
            previousNode.next = nextNode;
            currentNode.next = nil;
            break;
        }
        previousNode = currentNode;
        currentNode = nextNode;
    }
}

- (void)removeFirstNode {
    
    id <NodeProtocol> secondNode = self.first.next;
    
    self.first.next = nil;
    
    self.first = secondNode;
}

- (void)removeLastNode {
    
    id<NodeProtocol> lastNode = self.first;
    id<NodeProtocol> pNode = nil;
    
    do {
        
        pNode = lastNode;
        lastNode = lastNode.next;
        
    } while (lastNode.next);
    
    pNode.next = nil;
}

- (void)reverse {
    
    if (self.first.next == nil)
        return;
    
    id<NodeProtocol> currentNode = self.first.next;
    
    self.first.next = nil;
    
    while (currentNode != nil) {
        
        id<NodeProtocol> nextNode = currentNode.next;
        
        currentNode.next = self.first;
        self.first = currentNode;
        
        currentNode = nextNode;
    }
}

- (NSString *)description {
    
    id <NodeProtocol> node = self.first;
    
    NSString *description = [NSString stringWithFormat:@"%@\n", [node description]];
    
    node = node.next;
    
    while (node) {
        
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%@\n", [node description]]];
        
        node = node.next;
    }
    return description;
}

@end
