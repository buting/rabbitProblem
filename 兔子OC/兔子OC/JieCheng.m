//
//  JieCheng.m
//  兔子OC
//
//  Created by 林微艺 on 15/12/2.
//  Copyright © 2015年 林微艺. All rights reserved.
//

#import "JieCheng.h"

@implementation JieCheng
+(double )jieCheng:(double)x{
    double result=1; //阶乘分子
    for(int i=x;i>0;i--){
        result*=i;

    }
    return result;
    
}

@end
