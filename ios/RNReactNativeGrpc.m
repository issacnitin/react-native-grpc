
#import "RNReactNativeGrpc.h"

@implementation RNReactNativeGrpc

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD()
@end
  
