#import "store/StoreProfile.pbrpc.h"
#import "store/StoreProfile.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation STPRFStoreProfileApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"store_profile" serviceName:@"StoreProfileApi"]);
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


#pragma mark Create(CreateRequest) returns (CreateResponse)

- (void)createWithRequest:(STPRFCreateRequest *)request handler:(void(^)(STPRFCreateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateWithRequest:(STPRFCreateRequest *)request handler:(void(^)(STPRFCreateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFCreateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Update(UpdateRequest) returns (UpdateResponse)

- (void)updateWithRequest:(STPRFUpdateRequest *)request handler:(void(^)(STPRFUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequest:(STPRFUpdateRequest *)request handler:(void(^)(STPRFUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Update"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(STPRFGetRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(STPRFGetRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(STPRFListRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(STPRFListRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark FindByName(FindByNameRequest) returns (StoreProfileResponse)

- (void)findByNameWithRequest:(STPRFFindByNameRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindByNameWithRequest:(STPRFFindByNameRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Ban(BanRequest) returns (BanResponse)

- (void)banWithRequest:(STPRFBanRequest *)request handler:(void(^)(STPRFBanResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(STPRFBanRequest *)request handler:(void(^)(STPRFBanResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
