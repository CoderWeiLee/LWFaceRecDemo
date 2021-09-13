//
//  HomeViewController.m
//  HomeViewController
//
//  Created by 李伟 on 2021/9/13.
//  Copyright © 2021 ArcSoft. All rights reserved.
//

#import "HomeViewController.h"
#import <Masonry/Masonry.h>
@interface HomeViewController ()
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UIImageView *iconImageView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:120.0 / 255.0 green:157.0 / 255.0 blue:229.0 / 255.0 alpha:1.0];
    self.iconImageView = [[UIImageView alloc] init];
    self.iconImageView.image = self.icon;
    self.iconImageView.layer.cornerRadius = 8;
    self.iconImageView.layer.masksToBounds = YES;
    [self.view addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view).offset(120);
        make.width.height.mas_equalTo(@80);
    }];
    
    self.userNameLabel = [[UILabel alloc] init];
    self.userNameLabel.text = self.userName;
    self.userNameLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:self.userNameLabel];
    [self.userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.iconImageView.mas_bottom).offset(30);
    }];
}



@end
