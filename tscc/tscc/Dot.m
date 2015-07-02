//
//  Dot.m
//  tscc
//
//  Created by 黄泽彪 on 15/7/2.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import "Dot.h"

@implementation Dot

- (id) initWithX: (CGFloat) x AndY: (CGFloat) y {
    if (self = [self init]) {
        self.x = x;
        self.y = y;
    }
    
    return self;
}


@end

