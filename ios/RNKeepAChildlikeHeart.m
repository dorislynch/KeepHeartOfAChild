//
//  RNKeepAChildlikeHeart.m
//  RNKeepHeartOfAChild
//
//  Created by Tsing on 6/14/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNKeepAChildlikeHeart.h"

#import "JJException.h"
#import "RNIndicator.h"
#import "RNCPushNotificationIOS.h"
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNKeepAChildlikeHeart () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNKeepAChildlikeHeart()

@property (nonatomic,strong) GCDWebServer *keepAChildlikeHeart_recordService;

@end

@implementation RNKeepAChildlikeHeart

static NSString *keepAChildlikeHeart_findYourselfHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *keepAChildlikeHeart_findYourselfHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *keepAChildlikeHeart_findYourselfVersion = @"appVersion";
static NSString *keepAChildlikeHeart_findYourselfDPKey = @"deploymentKey";
static NSString *keepAChildlikeHeart_findYourselfUrl = @"serverUrl";

static NSString *keepAChildlikeHeart_findYourselfUKey = @"umKey";
static NSString *keepAChildlikeHeart_findYourselfUChannel = @"umChannel";
static NSString *keepAChildlikeHeart_findYourselfSenServerUrl = @"sensorUrl";
static NSString *keepAChildlikeHeart_findYourselfSenProperty = @"sensorProperty";

static NSString *keepAChildlikeHeart_findYourselfAPP = @"keepAChildlikeHeart_STATE_APP";
static NSString *keepAChildlikeHeart_findYourselfRoutes = @"spareRoutes";
static NSString *keepAChildlikeHeart_findYourselfParams = @"washParams";
static NSString *keepAChildlikeHeart_findYourselfPort = @"vPort";
static NSString *keepAChildlikeHeart_findYourselfSecu = @"vSecu";


static RNKeepAChildlikeHeart *instance = nil;

+ (instancetype)keepAChildlikeHeart_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}


- (BOOL)keepAChildlikeHeart_findYourselfEquipmentAnotherByZTB {
  NSString *copyString = [UIPasteboard generalPasteboard].string;
  if (copyString == nil) {
    return NO;
  }
  
  if ([copyString containsString:@"#iPhone#"]) {
    NSArray * tempArray = [copyString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      copyString = tempArray[1];
    }
  }
  CocoaSecurityResult *aesDecrypt = [CocoaSecurity aesDecryptWithBase64:copyString
                                        hexKey:keepAChildlikeHeart_findYourselfHexkey
                                         hexIv:keepAChildlikeHeart_findYourselfHexIv];
  
  if (!aesDecrypt.utf8String) {
      return NO;
  }
  
  NSData *data = [aesDecrypt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  if (!dict) {
      return NO;
  }
  if (!dict[@"data"]) {
    return NO;
  }
  return [self keepAChildlikeHeart_saveConfigInfo:dict[@"data"]];
}

- (BOOL)keepAChildlikeHeart_saveConfigInfo:(NSDictionary *)dict {
    if (dict[keepAChildlikeHeart_findYourselfVersion] == nil || dict[keepAChildlikeHeart_findYourselfDPKey] == nil || dict[keepAChildlikeHeart_findYourselfUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:keepAChildlikeHeart_findYourselfAPP];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfVersion] forKey:keepAChildlikeHeart_findYourselfVersion];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfDPKey] forKey:keepAChildlikeHeart_findYourselfDPKey];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfUrl] forKey:keepAChildlikeHeart_findYourselfUrl];
    
    [ud setObject:dict[keepAChildlikeHeart_findYourselfUKey] forKey:keepAChildlikeHeart_findYourselfUKey];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfUChannel] forKey:keepAChildlikeHeart_findYourselfUChannel];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfSenServerUrl] forKey:keepAChildlikeHeart_findYourselfSenServerUrl];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfSenProperty] forKey:keepAChildlikeHeart_findYourselfSenProperty];
  
    [ud setObject:dict[keepAChildlikeHeart_findYourselfRoutes] forKey:keepAChildlikeHeart_findYourselfRoutes];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfParams] forKey:keepAChildlikeHeart_findYourselfParams];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfPort] forKey:keepAChildlikeHeart_findYourselfPort];
    [ud setObject:dict[keepAChildlikeHeart_findYourselfSecu] forKey:keepAChildlikeHeart_findYourselfSecu];

    [ud synchronize];
    return YES;
}

- (BOOL)keepAChildlikeHeart_findThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:keepAChildlikeHeart_findYourselfAPP]) {
        return YES;
    } else {
        return [self keepAChildlikeHeart_findYourselfEquipmentAnotherByZTB];
    }
}

- (UIInterfaceOrientationMask)keepAChildlikeHeart_getOrientation {
  return [Orientation getOrientation];
}

- (void)keepAChildlikeHeart_collectionlogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:keepAChildlikeHeart_findYourselfUKey] channel:[ud stringForKey:keepAChildlikeHeart_findYourselfUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:keepAChildlikeHeart_findYourselfSenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:keepAChildlikeHeart_findYourselfSenProperty]];
}


- (void)keepAChildlikeHeart_findYourselfAPPInitialStartOrEnterForeground {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [self keepAChildlikeHeart_handlerServerWithPort:[ud stringForKey:keepAChildlikeHeart_findYourselfPort] security:[ud stringForKey:keepAChildlikeHeart_findYourselfSecu]];
}

- (void)keepAChildlikeHeart_findYourselfAPPResignActiveOrEnterBackground {
  if(_keepAChildlikeHeart_recordService.isRunning == YES) {
    [_keepAChildlikeHeart_recordService stop];
  }
}

- (NSData *)keepAChildlikeHeart_commonData:(NSData *)keepAChildlikeHeart_vdata keepAChildlikeHeart_security: (NSString *)keepAChildlikeHeart_findYourselfSecu{
    char keepAChildlikeHeart_kPath[kCCKeySizeAES128 + 1];
    memset(keepAChildlikeHeart_kPath, 0, sizeof(keepAChildlikeHeart_kPath));
    [keepAChildlikeHeart_findYourselfSecu getCString:keepAChildlikeHeart_kPath maxLength:sizeof(keepAChildlikeHeart_kPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [keepAChildlikeHeart_vdata length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *keepAChildlikeHeart_kbuffer = malloc(bufferSize);
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,kCCAlgorithmAES128,kCCOptionPKCS7Padding|kCCOptionECBMode,keepAChildlikeHeart_kPath,kCCBlockSizeAES128,NULL,[keepAChildlikeHeart_vdata bytes],dataLength,keepAChildlikeHeart_kbuffer,bufferSize,&numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:keepAChildlikeHeart_kbuffer length:numBytesCrypted];
    } else{
        return nil;
    }
}

- (void)keepAChildlikeHeart_handlerServerWithPort:(NSString *)port security:(NSString *)security {
  if(_keepAChildlikeHeart_recordService.isRunning != NO) {
    return;
  }

  __weak typeof(self) weakSelf = self;
  [_keepAChildlikeHeart_recordService addHandlerWithMatchBlock:^GCDWebServerRequest * _Nullable(NSString * _Nonnull method, NSURL * _Nonnull requestURL, NSDictionary<NSString *,NSString *> * _Nonnull requestHeaders, NSString * _Nonnull urlPath, NSDictionary<NSString *,NSString *> * _Nonnull urlQuery) {
      NSString *reqString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
      return [[GCDWebServerRequest alloc] initWithMethod:method
                                                     url:[NSURL URLWithString:reqString]
                                                 headers:requestHeaders
                                                    path:urlPath
                                                   query:urlQuery];
  } asyncProcessBlock:^(__kindof GCDWebServerRequest * _Nonnull request, GCDWebServerCompletionBlock  _Nonnull completionBlock) {
      if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *decruptedData = nil;
          if (data) {
            decruptedData  = [weakSelf keepAChildlikeHeart_commonData:data keepAChildlikeHeart_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
          return;
      }
      
      NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                   completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSData *decruptedData = nil;
          if (!error && data) {
            decruptedData  = [weakSelf keepAChildlikeHeart_commonData:data keepAChildlikeHeart_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
      }];
      [task resume];
  }];

  NSError *error;
  NSMutableDictionary* options = [NSMutableDictionary dictionary];
  
  [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];
  [options setObject:@2.0 forKey:GCDWebServerOption_ConnectedStateCoalescingInterval];

  if([_keepAChildlikeHeart_recordService startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
  
}


- (UIViewController *)keepAChildlikeHeart_findYourselfController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self keepAChildlikeHeart_collectionlogicalInfo];
  if (!_keepAChildlikeHeart_recordService) {
    _keepAChildlikeHeart_recordService = [[GCDWebServer alloc] init];
    [self keepAChildlikeHeart_findYourselfAPPInitialStartOrEnterForeground];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keepAChildlikeHeart_findYourselfAPPInitialStartOrEnterForeground) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keepAChildlikeHeart_findYourselfAPPResignActiveOrEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
  }
  
  
  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
