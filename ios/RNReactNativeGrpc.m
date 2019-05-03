
#import "RNReactNativeGrpc.h"
#import "gRPCMethods.m"

@implementation RNReactNativeGrpc

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE(Setup)

RCT_EXTERN_METHOD(connect:(Location*)loc)

@end
  
