#import "ClickableTvPlugin.h"
#if __has_include(<clickable_tv/clickable_tv-Swift.h>)
#import <clickable_tv/clickable_tv-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "clickable_tv-Swift.h"
#endif

@implementation ClickableTvPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftClickableTvPlugin registerWithRegistrar:registrar];
}
@end
