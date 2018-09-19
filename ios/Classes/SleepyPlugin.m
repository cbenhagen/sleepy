#import "SleepyPlugin.h"

@implementation SleepyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"sleepy"
            binaryMessenger:[registrar messenger]];
  SleepyPlugin* instance = [[SleepyPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"sleep" isEqualToString:call.method]) {
    [NSThread sleepForTimeInterval:10.0f];
    result(@"Good morning!");
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
