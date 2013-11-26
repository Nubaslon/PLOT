//
//  MainViewController.m
//  PLOT
//
//  Created by Nubaslon on 26.11.13.
//  Copyright (c) 2013 Nubaslon. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect frameView = CGRectMake(10, 10, self.view.frame.size.width - 20, self.view.frame.size.height - 20);
    NSArray *prices = [[NSArray alloc] initWithObjects:@"24000", @"4000", @"15000", @"20000", @"3000", @"16000", @"21000", @"8000", @"22000", @"17000", @"5000", @"11000", @"2000", @"17000",@"20000",@"5000",@"18000",@"5000",@"23000",@"4000",@"6000",@"15000",@"22000",@"17000",@"7000",@"11000",@"20000",@"5000",@"10000",@"20000",nil];
    _plotView = [[PlotView alloc] initWithFrame:frameView withPrices:prices];
   // _plotView.prices = [[NSArray alloc] initWithObjects:@"24000", @"0", @"15000", @"20000", @"0", @"16000", @"21000", @"0", @"0", @"17000", @"5000", @"11000", nil];
    [self.view addSubview:_plotView];
    NSLog(@"count12 %d", [_plotView.prices count]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
