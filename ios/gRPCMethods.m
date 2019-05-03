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

static NSString * const kHostAddress = @"localhost:50051";


@interface Setup : NSObject
- (void) connect ;

@end

@implementation Setup{
    LocationService *_service;
}

- (void) connect {
    [GRPCCall useInsecureConnectionsForHost:kHostAddress];
    _service = [[LocationService alloc] initWithHost:kHostAddress];
    
    Location *loc = [Location message];
    loc.profileId = @"1";
    loc.longitude = 9.232;
    loc.latitude = 8.123;
    [_service RPCToNearMeWithRequest:loc eventHandler:^(BOOL done, Location *response, NSError *error) {
        
        if(response) {
            
        }
    }];
}

@end
