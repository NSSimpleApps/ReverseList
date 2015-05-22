//
//  main.m
//  ListReverse
//
//  Created by NSSimpleApps on 22.05.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

Node* reverse(Node* head) {
    
    if (head.next == nil)
        return head;
    
    Node* currentNode = head.next;
    
    head.next = nil;
    
    while (currentNode != nil) {
        
        Node *nextNode = currentNode.next;
        
        currentNode.next = head;
        head = currentNode;
        
        currentNode = nextNode;
    }
    
    return currentNode;
}

void printNode(Node* const head) {
    
    Node *node = head;
    
    do {
        
        NSLog(@"number = %ld", (long)node.number);
        node = node.next;
    } while (node != nil);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *node1 = [Node new];
        node1.number = 1;
        
        Node *node2 = [Node new];
        node2.number = 2;
        
        Node *node3 = [Node new];
        node3.number = 3;
        
        Node *node4 = [Node new];
        node4.number = 4;
        
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        node4.next = nil;
        
        printNode(node1);
        
        reverse(node1);
        
        printNode(node4);
        
        NSLog(@"%@", node1.next);
    }
    return 0;
}
