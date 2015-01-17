//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "TopViewController.h"
#import "CustomColletionViewCellCollectionViewCell.h"

@interface TopViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)hamburgerTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
}


#pragma mark delegate

-(void)displayTigers{
    NSLog(@"tigers");
}

-(void)displayLions{
    NSLog(@"lions");
}

#pragma mark collectionView

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 12;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //init cell
    CustomColletionViewCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];



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
@end
