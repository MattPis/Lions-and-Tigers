//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"




@interface TopViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, TopDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *animalsArray;


@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self displayLions];
}

- (IBAction)hamburgerTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
}


#pragma mark delegate

-(void)displayTigers{
    self.animalsArray = [NSMutableArray new];
    self.animalsArray = [NSMutableArray arrayWithObjects:@"tiger",@"tiger2"@"tiger3",@"tiger4",@"tiger5",@"tiger",@"tiger2",@"tiger3",@"tiger4",@"tiger5",nil];
    [self.collectionView reloadData];



}

-(void)displayLions{
    self.animalsArray = [NSMutableArray new];
    self.animalsArray = [NSMutableArray arrayWithObjects:@"lion",@"lion2",@"lion3",@"lion4",@"lion5",@"lion",@"lion2",@"lion3",@"lion4",@"lion5",nil];
    [self.collectionView reloadData];


}


#pragma mark collectionView

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.animalsArray.count ;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    self.cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    self.cell.imageView.image = [UIImage imageNamed:[self.animalsArray objectAtIndex:indexPath.row]];
     self.cell.backgroundColor = [UIColor lightGrayColor];
    return  self.cell;

   }


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame = CGRectMake(50, 50, 300, 300);
    imageView.image = [UIImage imageNamed:[self.animalsArray objectAtIndex:indexPath.row]];


}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // Adjust cell size for orientation
    CGFloat widthPortrait = ((self.view.frame.size.width ) / 2)-15; // screen size divided by number of cells minus offset in portrait
    CGFloat widthLandscape = ((self.view.frame.size.width ) / 3)-15;    //in landscape
    if (UIDeviceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])) {
        return CGSizeMake(widthLandscape, widthLandscape);
    }
    return CGSizeMake(widthPortrait, widthPortrait);
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self.collectionView performBatchUpdates:nil completion:nil];
}






@end
