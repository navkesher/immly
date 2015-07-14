//
//  NewsTableViewCell.h
//  Immly
//
//  Created by Navneet Kesher on 7/14/15.
//  Copyright (c) 2015 Joy Frequency LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>

@interface NewsTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet PFImageView *SourceLogo;
@property (strong, nonatomic) IBOutlet UILabel *SourceNameLabel;
@property (strong, nonatomic) IBOutlet UITextView *SourceNews;
@property (strong, nonatomic) NSString *SourceNewsLink;

@end
