
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import "react-native-grpc-glife-umbrella.h"


@interface RNReactNativeGrpc : RCTEventEmitter <RCTBridgeModule> {
    LocationService *_service;
}

@end
  
