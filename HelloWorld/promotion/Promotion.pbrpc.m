#import "promotion/Promotion.pbrpc.h"
#import "promotion/Promotion.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation PROMPromotionApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"promotion" serviceName:@"PromotionApi"]);
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


#pragma mark Add(AddRequest) returns (AddResponse)

- (void)addWithRequest:(PROMAddRequest *)request handler:(void(^)(PROMAddResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(PROMAddRequest *)request handler:(void(^)(PROMAddResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PROMAddResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetRequest) returns (PromotionResponse)

- (void)getWithRequest:(PROMGetRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(PROMGetRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PROMPromotionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Find(FindRequest) returns (PromotionResponse)

- (void)findWithRequest:(PROMFindRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindWithRequest:(PROMFindRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Find"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PROMPromotionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListRequest) returns (stream PromotionResponse)

- (void)listWithRequest:(PROMListRequest *)request eventHandler:(void(^)(BOOL done, PROMPromotionResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(PROMListRequest *)request eventHandler:(void(^)(BOOL done, PROMPromotionResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PROMPromotionResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
