#import "store/StoreMember.pbrpc.h"
#import "store/StoreMember.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation STMEMStoreMemberApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"store_member" serviceName:@"StoreMemberApi"]);
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


#pragma mark Add(AddRequest) returns (MembershipResponse)

- (void)addWithRequest:(STMEMAddRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(STMEMAddRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STMEMMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Update(UpdateRequest) returns (MembershipResponse)

- (void)updateWithRequest:(STMEMUpdateRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequest:(STMEMUpdateRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Update"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STMEMMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByStore(ListByStoreRequest) returns (stream MembershipResponse)

- (void)listByStoreWithRequest:(STMEMListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STMEMListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STMEMMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListByMember(ListByMemberRequest) returns (stream MembershipResponse)

- (void)listByMemberWithRequest:(STMEMListByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByMemberWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByMemberWithRequest:(STMEMListByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STMEMMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanRequest) returns (BanResponse)

- (void)banWithRequest:(STMEMBanRequest *)request handler:(void(^)(STMEMBanResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(STMEMBanRequest *)request handler:(void(^)(STMEMBanResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STMEMBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
