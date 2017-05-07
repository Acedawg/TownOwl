//
//  SimpleTableCell.m
//  cameratestOBJC
//
//  Created by Silicon Hacks on 5/7/17.
//  Copyright © 2017 Silicon Hacks. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

@synthesize titleLabel = _titleLabel;
@synthesize desLabel = _desLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
