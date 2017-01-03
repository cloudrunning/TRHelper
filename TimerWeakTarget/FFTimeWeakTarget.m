//
//  FFTimeWeakTarget.m
//  FFEducation4Student
//
//  Created by caozhen@neusoft on 2016/11/9.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "FFTimeWeakTarget.h"
@interface FFTimeWeakTarget ()
@property (nonatomic, assign) SEL selector;
@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, weak) id target;
@end

@implementation FFTimeWeakTarget

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                     target:(id)aTarget
                                   selector:(SEL)aSelector
                                   userInfo:(id)userInfo
                                    repeats:(BOOL)repeats {
    FFTimeWeakTarget * timer = [FFTimeWeakTarget new];
    timer.target = aTarget;
    timer.selector = aSelector;
    timer.timer = [NSTimer scheduledTimerWithTimeInterval:interval target:timer selector:@selector(fire:) userInfo:userInfo repeats:repeats];
    [[NSRunLoop currentRunLoop] addTimer:timer.timer forMode:NSRunLoopCommonModes];
    return timer.timer;
}

-(void)fire:(NSTimer *)timer{
    
    if (self.target) {
        [self.target performSelector:self.selector withObject:timer.userInfo];
    } else {
        [self.timer invalidate];
    }
}
@end
