//
//  FlowerCell.m
//  PlayWithTableView
//
//  Created by Aleksandra Borovytskaya on 5/1/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "FlowerCell.h"
#import "Flower.h"

@interface FlowerCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UIImageView *flowerImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end


@implementation FlowerCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setUpWithModel:(Flower *)flower {

    self.flower = flower;
    self.titleLable.text = flower.name;
    self.descriptionLabel.text = flower.details;
    self.flowerImageView.image = [UIImage imageNamed:flower.imageName];


}


@end
