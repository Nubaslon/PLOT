//
//  PlotView.h
//  PLOT
//
//  Created by Nubaslon on 26.11.13.
//  Copyright (c) 2013 Nubaslon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlotView : UIView

@property (nonatomic,retain) NSArray *prices;

- (id)initWithFrame:(CGRect)frame withPrices:(NSArray *)prices;


@end
