//
//  gRPCMethods.m
//  RNReactNativeGrpc
//
//  Created by Nitin Issac Joy on 03/05/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import <GRPCCall+Tests.h>
#import <react-native-grpc-glife-umbrella.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import <RxLibrary/GRXWriter+Transformations.h>
#import "RCTEventEmitter.h"
#import "RCTBridgeModule.h"

static NSString * const kHostAddress = @"localhost:50051";


@interface Setup :  RCTEventEmitter <RCTBridgeModule>
- (void) connect ;

@end

@implementation Setup{
    LocationService *_service;
}

- (void) connect {
    [GRPCCall useInsecureConnectionsForHost:kHostAddress];
    _service = [[LocationService alloc] initWithHost:kHostAddress];
}

- (void) NearMe: (Location*)loc {
    [_service RPCToNearMeWithRequest: loc eventHandler:^(BOOL done, Location *response, NSError *error) {
        if(response) {
            [self sendEventWithName:@"sayHello" body:@"Hello"];
        }
    }];
}

@end
