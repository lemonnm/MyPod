//
//  ViewController.m
//  MyPod
//
//  Created by Matthieu Lemonnier on 02/03/2018.
//  Copyright © 2018 La Poste. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "HelloPod.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchCall:(id)sender {
    HelloPod * hello = [[HelloPod alloc] init];
    
    [hello france:^(NSString * capital) {
        _label.text = capital;
    }];
}

@end
