//
//  main.m
//  兔子OC
//
//  Created by 林微艺 on 15/12/1.
//  Copyright © 2015年 林微艺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JieCheng.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
//        兔子可以跳一步2步或者3步
//        问跳到100有几种跳法
        
/*
 分析1 两个变量，X*2+Y*3=100.  X最大为50，X最小为2   Y最大为32.最小为0
 分析2 某个情景分析：假设X=35，Y为10时,
      虽然知道了数量，但是兔子的35小步，和10大步的顺序是怎样的？
      应为组合-> 45个节点中，选择10个放三步的。那就是简单的C（45 10）.变成阶乘，就解得出来。
 */
        double temp=0.0f;
        for (int x=2; x<=50; x++) {//遍历1
            for (int y=0;y<=32 ; y++) {//遍历2
                if (x*2+y*3==100) {
                    
//                    NSLog(@"两步%d次  三步%d次 \n",x,y);
                    double fenzi=1; //阶乘分子
                    fenzi=[JieCheng jieCheng:(x+y)];
                    double fenmu1=1; //阶乘分母1
                    fenmu1=[JieCheng jieCheng:x];
                    double fenmu2=1; //阶乘分母2
                    fenmu2=[JieCheng jieCheng:y];

                    temp+=fenzi/(fenmu1*fenmu2);
                    
                    NSLog(@"在两步%d次,三步%d次的情境下，一共 C(%d,%d)->%f中组合方式:\n",x,y,(x+y),y,fenzi/(fenmu1*fenmu2));

                }
            }
            
        }
        NSLog(@"综合起来一共->%f种方式",temp);
  

    }
    return 0;
}
