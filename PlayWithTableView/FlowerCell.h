//
//  FlowerCell.h
//  PlayWithTableView
//
//  Created by Aleksandra Borovytskaya on 5/1/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Flower;

@interface FlowerCell : UITableViewCell
@property (nonatomic, strong) Flower* flower;

-(void)setUpWithModel:(Flower*)flower;


@end
