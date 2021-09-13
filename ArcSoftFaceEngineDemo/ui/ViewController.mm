//
//  ViewController.m
//

#import "ViewController.h"
#import "VideoCheckController.h"
#import <Masonry/Masonry.h>
#import "VideoCheckController.h"
@interface ViewController()
@property (nonatomic, strong) UIImageView *img;
@property (nonatomic, strong) UIButton *registerBtn;
@property (nonatomic, strong) UIButton *loginBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:120.0 / 255.0 green:157.0 / 255.0 blue:229.0 / 255.0 alpha:1.0];
    self.img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"face"]];
    [self.view addSubview:self.img];
    [self.img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view).offset(200);
    }];
    
    self.registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.registerBtn setTitle:@"人脸注册" forState:UIControlStateNormal];
    [self.registerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.registerBtn.layer.cornerRadius = 18;
    self.registerBtn.layer.masksToBounds = YES;
    self.registerBtn.layer.borderWidth = 0.5;
    self.registerBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.registerBtn addTarget:self action:@selector(registerAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.registerBtn];
    [self.registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view).offset(-100);
        make.width.mas_equalTo(@120);
        make.height.mas_equalTo(@44);
        make.top.mas_equalTo(self.img.mas_bottom).offset(100);
    }];
    
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.loginBtn setTitle:@"人脸登录" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn.layer.cornerRadius = 18;
    self.loginBtn.layer.masksToBounds = YES;
    self.loginBtn.layer.borderWidth = 0.5;
    self.loginBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.loginBtn addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.loginBtn];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view).offset(100);
        make.width.mas_equalTo(@120);
        make.height.mas_equalTo(@44);
        make.top.mas_equalTo(self.img.mas_bottom).offset(100);
    }];
}

#pragma mark - : 按钮点击
- (void)registerAction {
        VideoCheckController *videoC = [[VideoCheckController alloc] init];
        videoC.operateType = OpetateTypeRegister;
        [self presentViewController:videoC animated:true completion:nil];
}

- (void)loginAction {
    VideoCheckController *videoC = [[VideoCheckController alloc] init];
    videoC.operateType = OpetateTypeLogin;
    [self presentViewController:videoC animated:true completion:nil];
}


//-(void)videoCheck:(UIButton*)sender {
//    VideoCheckController *videoC = [[VideoCheckController alloc] init];
//    [self presentViewController:videoC animated:true completion:nil];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
