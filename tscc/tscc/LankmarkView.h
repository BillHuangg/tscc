//
//  LankmarkView.h
//  tscc
//
//  Created by 黄泽彪 on 15/7/2.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dot.h"

@interface LankmarkView : UIView

- (id)initWithFrame:(CGRect)frame AndDots:(NSMutableDictionary*) dots;

@property(strong, nonatomic) NSMutableDictionary *dots;

@end
