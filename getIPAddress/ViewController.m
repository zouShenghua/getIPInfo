//
//  ViewController.m
//  getIPAddress
//
//  Created by 维奕 on 2017/8/30.
//  Copyright © 2017年 维奕. All rights reserved.
//

#import "ViewController.h"
#import "IPToolManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(100, 100, 100, 30);
    [btn setTitle:@"获取IP地址" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(getIPInfo_event) forControlEvents:UIControlEventTouchUpInside];
    
    
  
}

-(void)getIPInfo_event{
    
    
//    pod 'IPTool'
    
//    IPv4是32位地址长度
//    IPv6是128位地址长度
    

    //方法一：此方法获取具体的ip地址
    IPToolManager *ipManager = [IPToolManager sharedManager];
    NSLog(@"当前设备的ip地址：%@",[ipManager currentIpAddress]);
    
    
    
    //方法二：此方法打印具体的ip详细信息
    IPToolManager *ipManager11 = [IPToolManager sharedManager];
    [ipManager11 currentIPAdressDetailInfo];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
