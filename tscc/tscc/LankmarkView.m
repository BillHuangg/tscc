//
//  LankmarkView.m
//  tscc
//
//  Created by 黄泽彪 on 15/7/2.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import "LankmarkView.h"

@implementation LankmarkView

- (id)initWithFrame:(CGRect)frame AndDots:(NSMutableDictionary*) dots {
    
    if(self = [self initWithFrame:frame]) {
        self.dots = dots;
        self.backgroundColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0];
    }
    
    return self;
}

- (void) drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(ctx, [[UIColor blueColor] CGColor]);
    
    for(Dot *dot in self.dots) {
        CGContextAddArc(ctx, dot.x, dot.y, 2.0f, 0.0f, 2.0f * M_PI, YES);
        CGContextFillPath(ctx);
    }
}

@end
