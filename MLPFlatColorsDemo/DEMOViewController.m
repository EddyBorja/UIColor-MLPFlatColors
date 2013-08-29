//
//  DEMOViewController.m
//  MLPFlatColorsDemo
//
//  Created by Eddy Borja on 4/10/13.
//  Copyright (c) 2013 Mainloop LLC. All rights reserved.
//

#import "DEMOViewController.h"
#import "UIColor+MLPFlatColors.h"
#import <QuartzCore/QuartzCore.h>

@interface DEMOViewController ()

@end

@implementation DEMOViewController

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    [cell setBackgroundColor:[self colorForRow:indexPath.row]];
    [cell.layer setShadowColor:[[UIColor blackColor] CGColor]];
    [cell.layer setShadowOffset:CGSizeMake(0, 1)];
    [cell.layer setShadowOpacity:0.4];
    [cell.layer setShadowPath:CGPathCreateWithRect(cell.bounds, NULL)];
    
    return cell;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath
{
    return [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer" forIndexPath:indexPath];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UINib *footerNib = [UINib nibWithNibName:@"DEMOFooterView" bundle:[NSBundle mainBundle]];
    [self.collectionView registerNib:footerNib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer"];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.view setAlpha:0];
    [UIView animateWithDuration:0.2
                          delay:0.25
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         [self.view setAlpha:1.0];
                     }completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Color selection
- (UIColor *)colorForRow:(NSInteger)row
{
 
    UIColor *color;
    switch (row) {
        case 0:
            color = [UIColor flatRedColor];
            break;
        case 2:
            color = [UIColor flatGreenColor];
            break;
        case 4:
            color = [UIColor flatBlueColor];
            break;
        case 6:
            color = [UIColor flatTealColor];
            break;
        case 8:
            color = [UIColor flatPurpleColor];
            break;
        case 10:
            color = [UIColor flatYellowColor];
            break;
        case 12:
            color = [UIColor flatOrangeColor];
            break;
        case 14:
            color = [UIColor flatGrayColor];
            break;
        case 16:
            color = [UIColor flatWhiteColor];
            break;
        case 18:
            color = [UIColor flatBlackColor];
            break;
        case 1:
            color = [UIColor flatDarkRedColor];
            break;
        case 3:
            color = [UIColor flatDarkGreenColor];
            break;
        case 5:
            color = [UIColor flatDarkBlueColor];
            break;
        case 7:
            color = [UIColor flatDarkTealColor];
            break;
        case 9:
            color = [UIColor flatDarkPurpleColor];
            break;
        case 11:
            color = [UIColor flatDarkYellowColor];
            break;
        case 13:
            color = [UIColor flatDarkOrangeColor];
            break;
        case 15:
            color = [UIColor flatDarkGrayColor];
            break;
        case 17:
            color = [UIColor flatDarkWhiteColor];
            break;
        case 19:
            color = [UIColor flatDarkBlackColor];
            break;
        default:
            color = [UIColor randomFlatColor];
            break;
    }
    
    return color;
}



@end
