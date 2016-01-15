//
//  PKLeftViewCell.m
//  pianke1月14日
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "PKLeftViewCell.h"
#import "Masonry.h"

@implementation PKLeftViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setBackgroundColor:RGB(58, 58, 58)];
        [self addSubview:self.cellImage];
        [self addSubview:self.titieLabel];
        [self leftCellMasonry];
    }
    return self;
}

- (void)leftCellMasonry {
    WS(weakSelf);
    
    [_cellImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top);
        make.left.equalTo(weakSelf.mas_left).offset(10);
        make.bottom.equalTo(weakSelf.mas_bottom);
        make.width.equalTo(weakSelf.mas_height);
    }];
    
    [_titieLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_cellImage.mas_right);
        make.right.equalTo(weakSelf.mas_right);
        make.top.equalTo(weakSelf.mas_top);
        make.bottom.equalTo(weakSelf.mas_bottom);
    }];
}

- (UIImageView*)cellImage {
    if (!_cellImage) {
        _cellImage = [[UIImageView alloc] init];
        [_cellImage setContentMode:UIViewContentModeCenter];
    }
    return _cellImage;
}

- (UILabel*)titieLabel {
    if (!_titieLabel) {
        _titieLabel = [[UILabel alloc] init];
        [_titieLabel setTextColor:[UIColor whiteColor]];
        [_titieLabel setTextAlignment:NSTextAlignmentLeft];
    }
    return _titieLabel;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
