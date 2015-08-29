//
//  LinkedList.h
//  ListReverse
//
//  Created by NSSimpleApps on 29.08.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NodeProtocol;

@interface LinkedList : NSObject

- (nonnull instancetype)initWithNode:(nonnull id<NodeProtocol>)node;

- (void)reverse;

- (void)add:(nonnull id<NodeProtocol>)node;

- (void)removeNode:(nonnull id<NodeProtocol>)node;

- (void)removeFirstNode;

- (void)removeLastNode;

@end
