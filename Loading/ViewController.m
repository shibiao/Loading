//
//  ViewController.m
//  TEST
//
//  Created by sycf_ios on 2016/11/18.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "ViewController.h"
#import "LoadingImage.h"
@interface ViewController ()
{
    NSTimer *_timer;
}

@property (weak, nonatomic) IBOutlet LoadingImage *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}
- (IBAction)start:(id)sender {
    [self.imageView start];
}
- (IBAction)stop:(id)sender {
    
    [self.imageView stop];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
