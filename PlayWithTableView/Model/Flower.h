//
// Created by Aleksandra Borovytskaya on 5/1/15.
// Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Flower : NSObject
@property (nonatomic,strong)NSString*name;
@property (nonatomic,strong)NSString*imageName;
@property (nonatomic,strong)NSString*details;
@property (nonatomic,strong)UIColor*color;
@property (nonatomic)BOOL isWild;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName details:(NSString *)details color:(UIColor *) color isWild:(BOOL)isWild;



@end