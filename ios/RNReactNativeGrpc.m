
#import "RNReactNativeGrpc.h"

@implementation RNReactNativeGrpc


NSString *kHostAddress = @"127.0.0.1:50051";

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE(RNReactNativeGrpc)

RCT_EXTERN_METHOD(connect:(Location*)loc)

- (void) connect {
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
  
