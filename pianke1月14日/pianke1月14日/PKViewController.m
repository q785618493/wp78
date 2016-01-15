//
//  PKViewController.m
//  pianke1月14日
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "PKViewController.h"
#import "PKLeftView.h"
#import "PKTableView.h"
#import "LeftBottomView.h"
#import "PKLeftModel.h"


@interface PKViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSArray* desArray1;

@property (strong, nonatomic) PKLeftView* leftView;
@property (strong, nonatomic) LeftBottomView* bottomView;
@property (strong, nonatomic) PKTableView* leftTable;

@end

@implementation PKViewController

- (NSArray *)desArray1 {
    if (!_desArray1) {
        NSString* strPath = [[NSBundle mainBundle] pathForResource:@"leftString" ofType:@"plist"];
        NSArray* modelArray = [[NSArray alloc] initWithContentsOfFile:strPath];
        NSMutableArray* muArray = [[NSMutableArray alloc] init];
        for (NSDictionary* modelDic in modelArray) {
            PKLeftModel* model = [[PKLeftModel alloc] init];
            [model setValuesForKeysWithDictionary:modelDic];
            [muArray addObject:model];
        }
        self.desArray1 = muArray;
    }
    return _desArray1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:self.leftView];
    
    [self.view addSubview:self.bottomView];
    
    self.leftTable.separatorStyle = NO;
    [self.view addSubview:self.leftTable];
    
    
    WS(weakSelf);
    [_leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top);
        make.height.equalTo(175);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-45);
        
    }];
    
    [_bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(weakSelf.view.mas_bottom);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-45);
        make.height.equalTo(60);
    }];
    
    [_leftTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.leftView.mas_bottom);
        make.bottom.equalTo(weakSelf.bottomView.mas_top);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-45);
    }];
}

- (PKTableView *)leftTable {
    if (!_leftTable) {
        _leftTable = [[PKTableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
        _leftTable.desArray = self.desArray1;
    }
    return _leftTable;
}

- (PKLeftView*)leftView {
    if (!_leftView) {
        _leftView = [[PKLeftView alloc] init];
    }
    return _leftView;
}

- (LeftBottomView *)bottomView {
    if (!_bottomView) {
        _bottomView = [[LeftBottomView alloc] init];
        [_bottomView setBackgroundColor:RGB(51, 51, 51)];
    }
    return _bottomView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
