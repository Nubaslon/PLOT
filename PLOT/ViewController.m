//
//  ViewController.m
//  PLOT
//
//  Created by SAMO Soft on 26.11.13.
//  Copyright (c) 2013 Nubaslon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *costArray;
}

#define xOffset 30
#define yBot 200
#define yTop 0

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
    float x = 10;
    // Do any additional setup after loading the view from its nib.
    costArray = [[NSArray alloc] initWithObjects:@"24000", @"0", @"15000", @"20000", @"0", @"16000", @"21000", @"0", @"0", @"17000", @"5000", @"11000", nil];
    float max = 24000;
    for (int i=0; i < [costArray count] ; i++) {
        UIButton *button = [[UIButton alloc] init];
        button.tag = i;
            x = x + xOffset;
            float y = yBot - ([[costArray objectAtIndex:i] floatValue]*100)/max;
            float w = 20;
            float h = yBot - y;
        
           // button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, w, h)];
        if (![[costArray objectAtIndex:i] isEqualToString:@"0"])
        {
            CGRect frame = CGRectMake(x, y, w, h);
            button.frame = frame;
            button.backgroundColor = [UIColor blackColor];
            [self.view addSubview:button];
        }
        else
        {
            CGRect frame = CGRectMake(x, y, w, h - 40);
            button.frame = frame;
            button.backgroundColor = [UIColor greenColor];
            [self.view addSubview:button];
        }
            NSLog(@"x %f y %f w %f h %f", x, y, w, h);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
