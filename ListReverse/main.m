//
//  main.m
//  ListReverse
//
//  Created by NSSimpleApps on 22.05.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "LinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedList *linkedList = [[LinkedList alloc] initWithNode:[[Node alloc] initWithTag:-1]];
        
        /*for (NSInteger tag = 0; tag < 5; tag++) {
            
            [linkedList add:[[Node alloc] initWithTag:tag]];
        }*/
        
        NSLog(@"\n%@", linkedList);
        [linkedList removeFirstNode];
        NSLog(@"\n%@", linkedList);
        [linkedList add:[[Node alloc] initWithTag:10]];
        NSLog(@"\n%@", linkedList);
    }
    return 0;
}
