//
//  ViewController.m
//  tscc
//
//  Created by 黄泽彪 on 15/7/1.
//  Copyright (c) 2015年 miugo. All rights reserved.
//

#import "ViewController.h"
#import "Dot.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testFun];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testFun {
    [FaceppAPI initWithApiKey: FACEPP_API_KEY andApiSecret: FACEPP_API_SECRET andRegion:APIServerRegionCN];
    [FaceppAPI setDebugMode:TRUE];
    
    
    FaceppResult *result = [[FaceppAPI detection] detectWithURL:nil orImageData:UIImageJPEGRepresentation([UIImage imageNamed:@"test_img"], 0.5) mode:FaceppDetectionModeOneFace attribute:FaceppDetectionAttributeNone];
    
    if (result.success) {
        //
        FaceppResult *lankmarkResult = [[FaceppAPI detection] landmarkWithFaceId:result.content[@"face"][0][@"face_id"] andType:FaceppLandmark83P];
        
        if (lankmarkResult.success) {
            // get landmark
            // display landmark
            
            NSMutableArray *tempDots = [[NSMutableArray alloc] init];
            
            NSDictionary *landmarkDic = lankmarkResult.content[@"result"][0][@"landmark"];
            for(NSString *key in landmarkDic) {
                NSDictionary *tempDic  = [landmarkDic objectForKey:key];
                [tempDots addObject: [[Dot alloc] initWithX:self.imgView.frame.size.width * [tempDic[@"x"] doubleValue] / 100.0 AndY:self.imgView.frame.size.height * [tempDic[@"y"] doubleValue] / 100.0]];
            }
            
            [tempDots addObject: [[Dot alloc] initWithX:self.imgView.frame.size.width * 0.5 AndY:self.imgView.frame.size.height * 0.5]];
            
            self.markLayerView = [[LankmarkView alloc] initWithFrame:self.imgView.frame AndDots:tempDots];
            [self.view addSubview:self.markLayerView];
        }
    } else {
        
    }
}

@end
