//
//  PKLeftView.m
//  pianke1月14日
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "PKLeftView.h"
#import "Masonry.h"

@implementation PKLeftView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.backImahge];
        [self addSubview:self.iconImageBtn];
        [self addSubview:self.userNameBtn];
        [self addSubview:self.downBtn];
        [self addSubview:self.collecBtn];
        [self addSubview:self.messageBtn];
        [self addSubview:self.writeBtn];
        [self addSubview:self.searchBtn];
        [self addAutoLayout];
    }
    return self;
}

- (void)addAutoLayout {
    WS(weakSelf);
    
    [_backImahge mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf).width.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [_iconImageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(50, 50));
        make.top.equalTo(weakSelf.mas_top).offset(40);
        make.left.equalTo(weakSelf.mas_left).offset(20);
    }];
    
    [_userNameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.iconImageBtn.mas_right).offset(10);
        make.height.equalTo(20);
        make.right.equalTo(weakSelf.mas_right).offset(-60);
        make.centerY.equalTo(weakSelf.iconImageBtn.mas_centerY);
    }];
    
    CGFloat width = (VIEW_WIDTH-125)/5.0;
    
    [_downBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).offset(width);
        make.size.equalTo(CGSizeMake(20, 20));
        make.top.equalTo(weakSelf.iconImageBtn.mas_bottom).offset(25);
    }];
    
    [_collecBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.downBtn.mas_right).offset(width);
        make.size.equalTo(CGSizeMake(20, 20));
        make.centerY.equalTo(weakSelf.downBtn.mas_centerY);
    }];
    
    [_messageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.collecBtn.mas_right).offset(width);
        make.size.equalTo(CGSizeMake(20, 20));
        make.centerY.equalTo(weakSelf.collecBtn.mas_centerY);
    }];
    
    [_writeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.messageBtn.mas_right).offset(width);
        make.size.equalTo(CGSizeMake(20, 20));
        make.centerY.equalTo(weakSelf.messageBtn.mas_centerY);
    }];
    
    [_searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.messageBtn.mas_bottom).offset(5);
        make.left.equalTo(weakSelf.mas_left).offset(25);
        make.right.equalTo(weakSelf.mas_right).offset(-25);
        make.height.equalTo(30);
    }];
    
    
}

- (UIImageView*)backImahge {
    if (!_backImahge) {
        _backImahge = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"渐变黑色.jpg"]];
    }
    return _backImahge;
}

- (UIButton*)iconImageBtn {
    if (!_iconImageBtn) {
        _iconImageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_iconImageBtn setImage:[UIImage imageNamed:@"头像"] forState:UIControlStateNormal];
        _iconImageBtn.layer.cornerRadius = 50/2;
        _iconImageBtn.layer.masksToBounds = YES;
    }
    return _iconImageBtn;
}

- (UIButton*)userNameBtn {
    if (!_userNameBtn) {
        _userNameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_userNameBtn setTitle:@"登录|注册" forState:UIControlStateNormal];
        _userNameBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_userNameBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    return _userNameBtn;
}

- (UIButton*)downBtn {
    if (!_downBtn) {
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_downBtn setImage:[UIImage imageNamed:@"下载"] forState:UIControlStateNormal];
    }
    
    return _downBtn;
}

- (UIButton*)collecBtn {
    if (!_collecBtn) {
        _collecBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_collecBtn setImage:[UIImage imageNamed:@"收藏"] forState:UIControlStateNormal];
    }
    return _collecBtn;
}

- (UIButton*)messageBtn {
    if (!_messageBtn) {
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_messageBtn setImage:[UIImage imageNamed:@"消息"] forState:UIControlStateNormal];
    }
    return _messageBtn;
}

- (UIButton*)writeBtn {
    if (!_writeBtn) {
        _writeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_writeBtn setImage:[UIImage imageNamed:@"写评论"] forState:UIControlStateNormal];
    }
    return _writeBtn;
}

- (UIButton*)searchBtn {
    if (!_searchBtn) {
        _searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_searchBtn setImage:[UIImage imageNamed:@"搜索"] forState:UIControlStateNormal];
    }
    return _searchBtn;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
