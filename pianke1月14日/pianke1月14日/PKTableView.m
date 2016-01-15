//
//  PKTableView.m
//  pianke1月14日
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "PKTableView.h"
#import "PKLeftViewCell.h"
#import "PKLeftModel.h"

static NSString* strCell = @"cell";
@interface PKTableView()<UITableViewDataSource,UITableViewDelegate>



@end

@implementation PKTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if(self = [super initWithFrame:frame style:style]) {
        [self registerClass:[PKLeftViewCell class]forCellReuseIdentifier:strCell];
        [self setBackgroundColor:RGB(58, 58, 58)];
        self.delegate = self;
        self.dataSource = self;
        [self setBounces:NO];
    }
    return self;
}


#pragma make- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.desArray.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PKLeftViewCell* cell = [tableView dequeueReusableCellWithIdentifier:strCell forIndexPath:indexPath];
    
    PKLeftModel* model = self.desArray[indexPath.row];
    
    cell.cellImage.image = [UIImage imageNamed:model.leftImage];
    cell.titieLabel.text = model.leftLabel;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55.0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
