#import "user/UserFans.pbrpc.h"
#import "user/UserFans.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation USRFANSUserFansApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"user_fans" serviceName:@"UserFansApi"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark Add(AddRequest) returns (FanshipResponse)

- (void)addWithRequest:(USRFANSAddRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(USRFANSAddRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRFANSFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FindParent(FindParentRequest) returns (FanshipResponse)

- (void)findParentWithRequest:(USRFANSFindParentRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindParentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindParentWithRequest:(USRFANSFindParentRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindParent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRFANSFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListChild(ListChildRequest) returns (stream FanshipResponse)

- (void)listChildWithRequest:(USRFANSListChildRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListChildWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListChildWithRequest:(USRFANSListChildRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListChild"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRFANSFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
