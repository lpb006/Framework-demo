//
//  SDKInfo.m
//  Framework
//
//  Created by super on 2021/8/2.
//

#import "SDKInfo.h"
#import <MJExtension/MJExtension.h>

@implementation SDKInfo
+ (void)SDK_printf{
    NSLog(@"SDK is print");
    NSDictionary *dic = @{@"a":@"1",@"2":@"b"};
    NSLog(@"json:%@",[dic mj_JSONString]);
}
@end
