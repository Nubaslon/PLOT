//
//  PlotView.m
//  PLOT
//
//  Created by Nubaslon on 26.11.13.
//  Copyright (c) 2013 Nubaslon. All rights reserved.
//

#import "PlotView.h"

@implementation PlotView
{
   // NSArray *costArray;
    UIButton *button;
    NSMutableArray *buttonArray;
}

#define xOffset 15 // отступ друг от друга
#define yBot 200 // нижняя планка Y
#define yTop 10 // верхний y
#define width 10 // ширина

- (id)initWithFrame:(CGRect)frame withPrices:(NSArray *)prices
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _prices = [[NSArray alloc] initWithArray:prices];
        buttonArray = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor yellowColor];
        [self createPlot];
    }
    return self;
}

-(void)createPlot
{
    float x = 10;
    // Do any additional setup after loading the view from its nib.
    //costArray = [[NSArray alloc] initWithObjects:@"24000", @"0", @"15000", @"20000", @"0", @"16000", @"21000", @"0", @"0", @"17000", @"5000", @"11000", nil];
    [buttonArray removeAllObjects];
    NSLog(@"count %d", [_prices count]);
    float max = 24000;
    for (int i=0; i < [_prices count] ; i++) {
        button = [[UIButton alloc] init];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        x = x + xOffset;
        float y = yBot - ([[_prices objectAtIndex:i] floatValue]*100)/max;
        float w = width;
        float h = yBot - y;
        
        UILabel *dayMonth = [[UILabel alloc] initWithFrame:CGRectMake(x, yBot + 10, 15, 15)];
        dayMonth.text = [NSString stringWithFormat:@"%d", i+1];
        [dayMonth setFont:[UIFont systemFontOfSize:10]];
        [self addSubview:dayMonth];
        // button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, w, h)];
        if (![[_prices objectAtIndex:i] isEqualToString:@"0"])
        {
            CGRect frame = CGRectMake(x, y, w, h);
            button.frame = frame;
            button.backgroundColor = [UIColor blackColor];
            [self addSubview:button];
        }
        else
        {
            CGRect frame = CGRectMake(x, y, w, h - 40);
            button.frame = frame;
            button.backgroundColor = [UIColor greenColor];
            [self addSubview:button];
        }
        [buttonArray addObject:button];
        NSLog(@"x %f y %f w %f h %f", x, y, w, h);
    }
    
}

-(void)buttonClick:(id)sender
{
    NSLog(@"B ok!!! tag - %d", [sender tag]);
   // UIButton *btn = (UIButton *)sender;
    for (int i=0; i<[buttonArray count]; i++) {
        UIButton *buttn = [buttonArray objectAtIndex:i];
        if (buttn.tag == [sender tag]) {
            buttn.backgroundColor = [UIColor blueColor];
        }else
            buttn.backgroundColor = [UIColor blackColor];
    }
    //btn.backgroundColor = [UIColor blueColor];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
