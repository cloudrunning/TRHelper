# TRHelper
1. TRUIKit
    ” UIColor + TRHelper “  提供了颜色转图片方法

    “ UIView + TRHelper”  提供了快捷的view的 origin，x,y,width,height,size,center,centerX,centerY的方法



2. TimerWeakTarget
    注：正常来说 timer 与 vc 有潜在的循环引用关系
    [NSTimer scheduledTimerWithTimeInterval:interval target:vc selector:@selector(fire:) userInfo:userInfo repeats:repeats];
    timer.target= vc  <=> timer->vc
    controller->timer ->controller 存在循环引用

    引入TimerWeakTarget后
    timer.target = weakTarget  （timer释放后  weakTarget 也随之释放， vc->timer  但是 vc与weakTarget 无任何关系）
    controller->timer
    timer->weakTarget
    controller 与weakTarget 无任何关系。固不存在循环引用
