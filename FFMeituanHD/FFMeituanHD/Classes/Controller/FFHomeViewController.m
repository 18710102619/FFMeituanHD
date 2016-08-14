//
//  FFHomeViewController.m
//  FFMeituanHD
//
//  Created by 张玲玉 on 16/8/14.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFHomeViewController.h"
#import "FFConst.h"
#import "UIBarButtonItem+Extension.h"
#import "FFHomeTopItem.h"

@interface FFHomeViewController ()

@end

@implementation FFHomeViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc]init];
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor=FFGlobalBg;
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self setLeftBarItems];
    [self setRightBarItems];
}

- (void)setLeftBarItems
{
    UIImageView *logo=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_meituan_logo"]];
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithCustomView:logo];
    logoItem.enabled = NO;

    FFHomeTopItem *cate=[FFHomeTopItem item];
    UIBarButtonItem *cateItem = [[UIBarButtonItem alloc] initWithCustomView:cate];
    
    FFHomeTopItem *city=[FFHomeTopItem item];
    UIBarButtonItem *cityItem = [[UIBarButtonItem alloc] initWithCustomView:city];
    
    FFHomeTopItem *sort=[FFHomeTopItem item];
    UIBarButtonItem *sortItem = [[UIBarButtonItem alloc] initWithCustomView:sort];
    
    self.navigationItem.leftBarButtonItems=@[logoItem,cateItem,cityItem,sortItem];
}

- (void)setRightBarItems
{
    UIBarButtonItem *mapItem=[UIBarButtonItem itemWithTarget:self action:nil image:@"icon_map" highImage:@"icon_map_highlighted"];
    mapItem.customView.width=60;
    UIBarButtonItem *searchItem=[UIBarButtonItem itemWithTarget:self action:nil image:@"icon_search" highImage:@"icon_search_highlighted"];
    searchItem.customView.width=60;
    self.navigationItem.rightBarButtonItems=@[mapItem,searchItem];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
