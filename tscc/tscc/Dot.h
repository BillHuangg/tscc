//
//  Dot.h
//  tscc
//
//  Created by 黄泽彪 on 15/7/2.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Dot : NSObject

- (id) initWithX: (CGFloat) x AndY: (CGFloat) y;

@property(assign) CGFloat x;
@property(assign) CGFloat y;

@end
