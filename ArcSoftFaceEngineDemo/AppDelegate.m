//
//  AppDelegate.m
//

#import "AppDelegate.h"
#import <ArcSoftFaceEngine/ArcSoftFaceEngine.h>
#import <MBProgressHUD/MBProgressHUD.h>
#define kRegisterKey @"kRegisterKey"
@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults objectForKey:kRegisterKey]) {
        NSString *appid = @"7eEDMz6aAZkDtFn798zSgbuk5R8TBJcV4c4fCpBtmNSF";
        NSString *sdkkey = @"3y9Lw2NyCNP8Qp4ktV1Xu8ZZPBvKejzkbagnAxjA6QAi";
        ArcSoftFaceEngine *engine = [[ArcSoftFaceEngine alloc] init];
        MRESULT mr = [engine activeWithAppId:appid SDKKey:sdkkey];
        MBProgressHUD *hud = [MBProgressHUD HUDForView:[UIApplication sharedApplication].keyWindow];
        if (mr == ASF_MOK) {
            hud.label.text = @"SDK激活成功";
        } else if(mr == MERR_ASF_ALREADY_ACTIVATED){
            hud.label.text = @"SDK已激活";
        } else {
            hud.label.text = [NSString stringWithFormat:@"SDK激活失败：%ld", mr];
        }
        hud.mode = MBProgressHUDModeText;
        [hud showAnimated:YES];
        [hud hideAnimated:YES afterDelay:1.0];
        [defaults setObject:@(YES) forKey:kRegisterKey];
        [defaults synchronize];
    }
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
    return UIInterfaceOrientationMaskPortrait;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//- (void)testHttp {
//    NSURL* url = [NSURL URLWithString:@"https://ai.arcsoft.com.cn"];
//    NSURLRequest* request = [NSURLRequest requestWithURL:url];
//    NSURLSession* session = [NSURLSession sharedSession];
//    NSURLSessionDataTask* dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
//    }];
//    [dataTask resume];
//}

@end
