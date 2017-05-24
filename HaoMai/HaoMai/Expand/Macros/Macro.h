//
//  Macro.h
//  NMFMVCFrameWork
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#ifndef Macro_h
#define Macro_h


/******* 日志打印替换 *******/
#ifdef DEBUG
// Debug
#define DWQLog(FORMAT, ...) fprintf(stderr, "%s [%d lines] %s\n", __PRETTY_FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
// Release
#define DWQLog(FORMAT, ...) nil
#endif
/******* 日志打印替换 *******/


/** APP版本号 */
#define NMFAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
/** APP BUILD 版本号 */
#define NMFAppBuildVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
/** APP名字 */
#define NMFAppDisplayName [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]
/** 当前语言 */
#define NMFLocalLanguage [[NSLocale currentLocale] objectForKey:NSLocaleLanguageCode]
/** 当前国家 */
#define NMFLocalCountry [[NSLocale currentLocale] objectForKey:NSLocaleCountryCode]


/******* 设备型号和系统 *******/
/** 检查系统版本 */
#define NMFSYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define NMFSYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define NMFSYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define NMFSYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define NMFSYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
/** 系统和版本号 */
#define NMFDevice [UIDevice currentDevice]
#define NMFDeviceName DWQDevice.name                           // 设备名称
#define NMFDeviceModel DWQDevice.model                         // 设备类型
#define NMFDeviceLocalizedModel DWQDevice.localizedModel       // 本地化模式
#define NMFDeviceSystemName DWQDevice.systemName               // 系统名字
#define NMFDeviceSystemVersion DWQDevice.systemVersion         // 系统版本
#define NMFDeviceOrientation DWQDevice.orientation             // 设备朝向
#define NMFDeviceUUID DWQDevice.identifierForVendor.UUIDString // UUID
#define NMFiOS8 ([DWQDeviceSystemVersion floatValue] >= 8.0)   // iOS8以上
#define NMFiPhone ([DWQDeviceModel rangeOfString:@"iPhone"].length > 0)
#define NMFiPod ([DWQDeviceModel rangeOfString:@"iPod"].length > 0)
#define NMFiPad (DWQDevice.userInterfaceIdiom == UIUserInterfaceIdiomPad)
/******* 设备型号和系统 *******/



///******* 屏幕尺寸 *******/
#define     kWidth      [UIScreen mainScreen].bounds.size.width
#define     kHeight     [UIScreen mainScreen].bounds.size.height
#define     ZOOM_SCALE  kWidth/375.0
///******* 屏幕尺寸 *******/

//获取View的属性
#define GetViewWidth(view)  view.frame.size.width
#define GetViewHeight(view) view.frame.size.height
#define GetViewX(view)      view.frame.origin.x
#define GetViewY(view)      view.frame.origin.y



//弱引用/强引用  可配对引用在外面用MPWeakSelf(self)，block用MPStrongSelf(self)  也可以单独引用在外面用MPWeakSelf(self) block里面用weakself
#define MPWeakSelf(type)  __weak typeof(type) weak##type = type;
#define MPStrongSelf(type)  __strong typeof(type) type = weak##type;


///******* RGB颜色 *******/
#define HW_COLOR(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

//主色调
#define THEME_COLOR HW_COLOR(236, 59, 59, 1.0)

//背景灰色 #f7f7f7
#define BASE_GRAY_COLOR HW_COLOR(247, 247, 247, 1.0)
//#000000
#define TEXT_COLOR HW_COLOR(0, 0, 0, 1.0)
//#FE2525 红字
#define RED_TEXT_COLOR HW_COLOR(254, 37, 37, 1.0)
//#99999 灰字
#define GRAY_TEXT_COLOR HW_COLOR(153, 153, 153, 1.0)

///******* RGB颜色 *******/


// 是否空对象
#define IS_NULL_CLASS(OBJECT) [OBJECT isKindOfClass:[NSNull class]]
//字符串是否为空
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )
//数组是否为空
#define kArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)
//字典是否为空
#define kDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)
//是否是空对象
#define kObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))


///******* 路径 *******/
//Library/Caches 文件路径
#define FilePath ([[NSFileManager defaultManager] URLForDirectory:NSCachesDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:YES error:nil])
//获取temp
#define kPathTemp NSTemporaryDirectory()
//获取沙盒 Document
#define kPathDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
//获取沙盒 Cache
#define kPathCache [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]
///******* 路径 *******/


//由角度转换弧度
#define kDegreesToRadian(x)      (M_PI * (x) / 180.0)
//由弧度转换角度
#define kRadianToDegrees(radian) (radian * 180.0) / (M_PI)


#endif /* Macro_h */
