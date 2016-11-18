//
//  LoadingImage.m
//  Loading
//
//  Created by sycf_ios on 2016/11/18.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "LoadingImage.h"
@interface LoadingImage ()
{
    NSTimer *_timer;
}
@end
@implementation LoadingImage

-(void)start{
    if ([_timer isValid]) {
        
        [_timer invalidate];
        _timer=nil;
    }
    _timer=[NSTimer timerWithTimeInterval:0.5 target:self selector:@selector(runRotation) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:_timer forMode:NSDefaultRunLoopMode];
}
-(void)stop{
    if ([_timer isValid]) {
        [_timer invalidate];
        _timer=nil;
    }
}
-(void)runRotation{
    [UIView animateWithDuration:1 animations:^{
        self.transform=CGAffineTransformRotate(self.transform, M_PI);
    }];
}


@end
