//
// Created by Aleksandra Borovytskaya on 5/1/15.
// Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "Flower.h"


@implementation Flower {


}
- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName  details:(NSString *)details color:(UIColor *)color isWild:(BOOL)isWild {
    self = [super init];
    if (self) {
        self.name = name;
        self.imageName = imageName;
        self.details = details;
        self.color = color;
        self.isWild = isWild;
    }

    return self;
}


@end