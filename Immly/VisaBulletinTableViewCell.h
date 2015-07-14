//
//  VisaBulletinTableViewCell.h
//  Immly
//
//  Created by Navneet Kesher on 7/11/15.
//  Copyright (c) 2015 Joy Frequency LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>

@interface VisaBulletinTableViewCell : PFTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *ebLabel;
@property (weak, nonatomic) IBOutlet UILabel *inCutoffDate;
@property (weak, nonatomic) IBOutlet UILabel *cnCutoffDate;
@property (weak, nonatomic) IBOutlet UILabel *mxCutoffDate;
@property (weak, nonatomic) IBOutlet UILabel *phCutoffDate;
@property (weak, nonatomic) IBOutlet UILabel *rowCutoffDate;

@end
