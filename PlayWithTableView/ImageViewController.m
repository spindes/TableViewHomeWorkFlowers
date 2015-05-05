//
//  ImageViewController.m
//  PlayWithTableView
//
//  Created by Aleksandra Borovytskaya on 4/26/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ImageViewController.h"
#import "Flower.h"


@interface ImageViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGuestureRecognized;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image=[UIImage imageNamed:self.flower.imageName];
    self.textView.text = self.flower.details;

}

- (IBAction)didTapOnView:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];


}

@end
