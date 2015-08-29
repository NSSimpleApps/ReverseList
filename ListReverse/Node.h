//
//  Node.h
//  ListReverse
//
//  Created by NSSimpleApps on 22.05.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NodeProtocol.h"

@interface Node : NSObject <NodeProtocol>

- (nonnull instancetype)initWithTag:(NSInteger)tag;

@property (assign, nonatomic) NSInteger tag;

@property (strong, nonatomic, nullable) Node *next;

@end
