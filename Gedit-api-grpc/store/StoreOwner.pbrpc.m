#import "store/StoreOwner.pbrpc.h"
#import "store/StoreOwner.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation STOWNStoreOwnerApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"store_owner" serviceName:@"StoreOwnerApi"]);
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


#pragma mark Transfer(TransferRequest) returns (OwnershipResponse)

- (void)transferWithRequest:(STOWNTransferRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTransferWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToTransferWithRequest:(STOWNTransferRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Transfer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STOWNOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByOwner(ListByOwnerRequest) returns (stream OwnershipResponse)

- (void)listByOwnerWithRequest:(STOWNListByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByOwnerWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByOwnerWithRequest:(STOWNListByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByOwner"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STOWNOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
