//
//  ViewController.m
//  PlayWithTableView
//
//  Created by Aleksandra Borovytskaya on 4/26/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
#import "Flower.h"
#import "FlowerCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) NSArray *data;

@end

@implementation ViewController


- (void)viewDidLoad {

    [super viewDidLoad];
    [self loadData];
    [self.tableView registerNib:[UINib nibWithNibName:@"FlowerCell" bundle:nil] forCellReuseIdentifier:@"FlowerCell"];


//    Already linked in UI builder:
//    self.tableView.dataSource=self;
//    self.tableView.delegate=self;
    
}

- (void)loadData {

    NSMutableArray *tmp = [[NSMutableArray alloc]init];


    UIColor *color = [UIColor colorWithRed:1.f green:0.27f blue:0.56f alpha:1];
    Flower *flower = [[Flower alloc] initWithName:@"Астра" imageName: @"astra.jpg" details:NSLocalizedString( @"astra.description",nil) color:color isWild:NO];

    [tmp addObject:flower];


    color = [UIColor colorWithRed:0.89f green:0.27f blue:0.56f alpha:1];
    flower = [[Flower alloc] initWithName:@"Роза" imageName: @"rose.png" details:NSLocalizedString(@"rose.description",nil) color:color isWild:NO];
    [tmp addObject:flower];

    color =[UIColor colorWithRed:0.67f green:0.4f blue:0.67f alpha:1];
    flower = [[Flower alloc] initWithName:@"Гладиолус" imageName: @"gladi.jpg" details:NSLocalizedString(@"gladi.description", nil) color:color isWild:NO];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.89f green:0.53f blue:0.63f alpha:1];
    flower = [[Flower alloc] initWithName:@"Тюльпан" imageName: @"tulip.jpg" details:NSLocalizedString(@"tulip.description", nil) color:color isWild:NO];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.49f green:0.5f blue:0.85f alpha:1];
    flower = [[Flower alloc] initWithName:@"Крокус" imageName: @"krokus.jpg" details:NSLocalizedString(@"krokus.description", nil) color:color isWild:YES];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.9f green:0.63f blue:0.83f alpha:1];
    flower = [[Flower alloc] initWithName:@"Хризантема" imageName: @"hriza.jpg" details:NSLocalizedString(@"hriza.description",nil) color:color isWild:YES];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:1.f green:0.2f blue:1.f alpha:1];
    flower = [[Flower alloc] initWithName:@"Орхидея" imageName: @"orchid.jpg" details:NSLocalizedString(@"orchid.description", nil) color:color isWild:YES];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:1.f green:0.2f blue:0.4f alpha:1];
    flower = [[Flower alloc] initWithName:@"Магнолия" imageName: @"magno.jpg" details:NSLocalizedString(@"magno.description",nil) color:color isWild:YES];
    [tmp addObject:flower];

    self.data=tmp;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //get cell
    FlowerCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"FlowerCell" forIndexPath:indexPath];

    //get flower from array
    Flower *flower = self.data[(NSUInteger) indexPath.row];

    //apply flower to cell
    [cell setUpWithModel:flower];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSLog(@"Tapped at row with title:%@",self.data [(NSUInteger) indexPath.row]);
  [tableView deselectRowAtIndexPath:indexPath animated:YES];


   UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
   ImageViewController *imageViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"ImageViewController"];

   imageViewController.flower = self.data [(NSUInteger) indexPath.row ];

    [self presentViewController:imageViewController animated:YES completion:nil];


}

@end
