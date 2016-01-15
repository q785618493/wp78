//
//  LeftBottomView.m
//  pianke1月14日
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "LeftBottomView.h"
#import "Masonry.h"

@implementation LeftBottomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.bottomImage];
        [self addSubview:self.musicBtn];
        [self addSubview:self.playBtn];
        [self addSubview:self.titleLabel];
        [self addSubview:self.introduceLabel];
        [self btnMasonry];
    }
    return self;
}

- (void)btnMasonry {
    WS(weakSelf);
    
    [_bottomImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf).width.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [_musicBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.mas_top).offset(10);
        make.bottom.mas_equalTo(weakSelf.mas_bottom).offset(-10);
        make.left.mas_equalTo(weakSelf.mas_left).offset(10);
        make.width.mas_equalTo(40);
    }];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.musicBtn.mas_right).offset(10);
        make.right.equalTo(weakSelf.playBtn.mas_left).offset(-10);
        make.top.equalTo(weakSelf.mas_top).offset(10);
        make.height.equalTo(20);
    }];
    
    [_introduceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.musicBtn.mas_right).offset(10);
        make.right.equalTo(weakSelf.playBtn.mas_left).offset(-10);
        make.top.equalTo(weakSelf.titleLabel.mas_bottom);
        make.height.equalTo(20);
    }];
    
    [_playBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.mas_top).offset(15);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-15);
        make.bottom.mas_equalTo(weakSelf.mas_bottom).offset(-15);
        make.width.mas_equalTo(30);
    }];
}

- (UIImageView *)bottomImage {
    if (!_bottomImage) {
        _bottomImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    }
    return _bottomImage;
}

- (UIButton*)musicBtn {
    if (!_musicBtn) {
        _musicBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_musicBtn setImage:[UIImage imageNamed:@"音乐"] forState:UIControlStateNormal];
        
    }
    return _musicBtn;
}

- (UIButton*)playBtn {
    if (!_playBtn) {
        _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_playBtn setBackgroundImage:[UIImage imageNamed:@"播放"] forState:UIControlStateNormal];
        _playBtn.selected = NO;
        [_playBtn setBackgroundImage:[UIImage imageNamed:@"下载"] forState:UIControlStateHighlighted];
    }
    return _playBtn;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setText:@"真的好想你"];
        [_titleLabel setFont:[UIFont systemFontOfSize:15.0]];
        [_titleLabel setTextColor:[UIColor whiteColor]];
        [_titleLabel setTextAlignment:NSTextAlignmentLeft];
    }
    return _titleLabel;
}

- (UILabel *)introduceLabel {
    if (!_introduceLabel) {
        _introduceLabel = [[UILabel alloc] init];
        [_introduceLabel setText:@"魔音坊音乐台"];
        [_introduceLabel setFont:[UIFont systemFontOfSize:10.0]];
        [_introduceLabel setTextAlignment:NSTextAlignmentLeft];
        [_introduceLabel setTextColor:[UIColor whiteColor]];
    }
    return _introduceLabel;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
