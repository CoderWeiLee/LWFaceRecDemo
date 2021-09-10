//
//  ViewController.m
//

#import "ViewController.h"
//#import "ImageCheckController.h"
//#import "VideoCheckController.h"
//#import <ArcSoftFaceEngine/ArcSoftFaceEngine.h>
#import <Masonry/Masonry.h>
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
    
    
//    UIButton *buttonE = [UIButton buttonWithType:UIButtonTypeCustom];
//    [buttonE setFrame:CGRectMake(50, 120, 200, 100)];
//    [buttonE setBackgroundColor:[UIColor grayColor]];
//    [buttonE setTitle:@"引擎激活" forState:UIControlStateNormal];
//    [buttonE addTarget:self action:@selector(engineActive:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:buttonE];
//
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setFrame:CGRectMake(50, 240, 200, 100)];
//    [button setBackgroundColor:[UIColor grayColor]];
//    [button setTitle:@"Image模式检测" forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(imageCheck:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button2 setFrame:CGRectMake(50, 360, 200, 100)];
//    [button2 setBackgroundColor:[UIColor grayColor]];
//    [button2 setTitle:@"Video模式检测" forState:UIControlStateNormal];
//    [button2 addTarget:self action:@selector(videoCheck:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button2];
}

#pragma mark - : 按钮点击
- (void)registerAction {
    
}

- (void)loginAction {
    
}

//-(void)engineActive:(UIButton*)sender {
//    NSString *appid = @"7eEDMz6aAZkDtFn798zSgbuk5R8TBJcV4c4fCpBtmNSF";
//    NSString *sdkkey = @"3y9Lw2NyCNP8Qp4ktV1Xu8ZZPBvKejzkbagnAxjA6QAi";
//    ArcSoftFaceEngine *engine = [[ArcSoftFaceEngine alloc] init];
//    MRESULT mr = [engine activeWithAppId:appid SDKKey:sdkkey];
//    if (mr == ASF_MOK) {
//        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"SDK激活成功" message:@"" preferredStyle:UIAlertControllerStyleAlert];
//        [self presentViewController:alertController animated:YES completion:nil];
//        [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//        }]];
//    } else if(mr == MERR_ASF_ALREADY_ACTIVATED){
//        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"SDK已激活" message:@"" preferredStyle:UIAlertControllerStyleAlert];
//        [self presentViewController:alertController animated:YES completion:nil];
//        [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//        }]];
//    } else {
//        NSString *result = [NSString stringWithFormat:@"SDK激活失败：%ld", mr];
//        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:result message:@"" preferredStyle:UIAlertControllerStyleAlert];
//        [self presentViewController:alertController animated:YES completion:nil];
//        [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//        }]];
//    }
//}

//-(void)imageCheck:(UIButton*)sender {
//    ImageCheckController *imageC = [[ImageCheckController alloc] init];
//    [self presentViewController:imageC animated:true completion:nil];
//}
//
//-(void)videoCheck:(UIButton*)sender {
//    VideoCheckController *videoC = [[VideoCheckController alloc] init];
//    [self presentViewController:videoC animated:true completion:nil];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
