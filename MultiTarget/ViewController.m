//
//  ViewController.m
//  MultiTarget
//
//  Created by Jun Zhang on 4/12/16.
//  Copyright © 2016 Jun Zhang. All rights reserved.
//

#import "ViewController.h"

#ifdef BETA
#define kText @"BETA"
#else
#define kText @"RELEASE"
#endif

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.label];
    self.label.text = kText;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:self.view.bounds];
        _label.font = [UIFont systemFontOfSize:34.f];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor blueColor];
    }
    return _label;
}
@end
