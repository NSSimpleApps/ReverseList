//
//  NodeProtocol.h
//  ListReverse
//
//  Created by NSSimpleApps on 29.08.15.
//  Copyright (c) 2015 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NodeProtocol <NSObject, NSCopying>

@property (strong, nonatomic, nullable) id<NodeProtocol> next;

@end
