//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "RootViewController.h"


@interface TopViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, TopDelegate, RootDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *animalsArray;


@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTigers];

}

- (IBAction)hamburgerTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
}


#pragma mark delegate

-(void)loadTigers{
    self.animalsArray = [NSMutableArray arrayWithObjects:@"tiger",@"tiger2",@"tiger3"@"tiger4",@"tiger5",@"tiger",@"tiger2",@"tiger3"@"tiger4",@"tiger5",nil];
    [self.collectionView reloadData];
    NSLog(@"displayTigers");


}

-(void)loadLions{

    self.animalsArray = [NSMutableArray arrayWithObjects:@"lion",@"lion2",@"lion3"@"lion4",@"lion5"@"lion",@"lion2",@"lion3"@"lion4",@"lion5",nil];
    [self.collectionView reloadData];
    NSLog(@"displayLions");


}
-(void)topRevealButtonTapped{
}


#pragma mark collectionView

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.animalsArray.count ;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[self.animalsArray objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;

   }


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // Adjust cell size for orientation
    CGFloat widthPortrait = ((self.view.frame.size.width ) / 3)-10;
    CGFloat widthLandscape = ((self.view.frame.size.width ) / 4)-15;
    if (UIDeviceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])) {
        return CGSizeMake(widthLandscape, widthLandscape);
    }
    return CGSizeMake(widthPortrait, widthPortrait);
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self.collectionView performBatchUpdates:nil completion:nil];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        TopViewController *hVC = segue.destinationViewController;
        hVC.delegate = self;
    NSLog(@"log");

}



@end
