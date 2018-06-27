//
//  CityTranveViewController.m
//  RAC_MVVMDemo
//
//  Created by 靓萌服饰靓萌服饰 on 2018/6/27.
//  Copyright © 2018年 靓萌服饰靓萌服饰. All rights reserved.
//

#import "CityTranveViewController.h"
#import "HLRACHeader.h"
#import "HTCityTravelCell.h"
#import "HTTextField.h"
#import "CityTravelViewModel.h"
#import "HTTableView.h"
@interface CityTranveViewController ()<UITextFieldDelegate,UITableViewDelegate>
/**
*  Banner
*/
//@property (strong, nonatomic) HTInfiniteCarouselView *bannerView;
/**
 *  轮播图
 */
@property (strong, nonatomic) UIView *headerView;
/**
 *  tableview
 */
@property (strong, nonatomic) HTTableView *tripTableView;
/**
 *  banner图数据
 */
@property (strong, nonatomic) NSMutableArray *bannerData;
/**
 *  rightButton
 */
@property (strong, nonatomic) UIButton *rightButton;
/**
 *  leftButton
 */
@property (strong, nonatomic) UIButton *leftButton;
/**
 *  是否为搜索
 */
@property (assign , nonatomic) BOOL  isSearch;
/**
 *  搜索框
 */
@property (strong, nonatomic) HTTextField *searchTextField;
@end

@implementation CityTranveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
