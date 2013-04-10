//
//  DEMOViewController.h
//  MLPFlatColorsDemo
//
//  Created by Eddy Borja on 4/10/13.
//  Copyright (c) 2013 Mainloop LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DEMOViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UICollectionReusableView *footerView;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@end
