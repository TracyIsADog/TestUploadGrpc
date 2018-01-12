#import "store/StoreWorker.pbrpc.h"
#import "store/StoreWorker.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation STWRKStoreWorkerApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"store_worker" serviceName:@"StoreWorkerApi"]);
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


#pragma mark Add(AddRequest) returns (WorkshipResponse)

- (void)addWithRequest:(STWRKAddRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(STWRKAddRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STWRKWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByStore(ListByStoreRequest) returns (stream WorkshipResponse)

- (void)listByStoreWithRequest:(STWRKListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STWRKListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STWRKWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListByWorker(ListByWorkerRequest) returns (stream WorkshipResponse)

- (void)listByWorkerWithRequest:(STWRKListByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByWorkerWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByWorkerWithRequest:(STWRKListByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByWorker"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STWRKWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanRequest) returns (WorkshipResponse)

- (void)banWithRequest:(STWRKBanRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(STWRKBanRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STWRKWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
