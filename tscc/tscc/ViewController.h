//
//  ViewController.h
//  tscc
//
//  Created by 黄泽彪 on 15/7/1.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceppAPI.h"
#import "FaceKey+Secret.h"
#import "LankmarkView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) LankmarkView *markLayerView;

@end

