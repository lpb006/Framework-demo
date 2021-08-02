//
//  ViewController.m
//  testFrameworkDemo
//
//  Created by super on 2021/8/2.
//

#import "ViewController.h"
#import <Framework/Framework.h>
#import <MJExtension/MJExtension.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SDKInfo SDK_printf];
}


@end
