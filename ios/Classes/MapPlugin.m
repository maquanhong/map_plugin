#import "MapPlugin.h"
#import <map_plugin/map_plugin-Swift.h>

@implementation MapPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMapPlugin registerWithRegistrar:registrar];
}
@end
