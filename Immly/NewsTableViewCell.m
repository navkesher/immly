//
//  NewsTableViewCell.m
//  Immly
//
//  Created by Navneet Kesher on 7/14/15.
//  Copyright (c) 2015 Joy Frequency LLC. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.contentView.clipsToBounds = YES;
        
        self.frame = CGRectMake(0.0, 0.0, [[UIScreen mainScreen] bounds].size.width, 150.0);
        
    }
    
    [self.contentView addSubview:_SourceLogo];
    [self.contentView addSubview:_SourceNameLabel];
    [self.contentView addSubview:_SourceNews];
    
    return self;
}

@end
