#import "store/StoreSearch.pbrpc.h"
#import "store/StoreSearch.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation STSCHStoreSearchApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"store_search" serviceName:@"StoreSearchApi"]);
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


#pragma mark Index(IndexRequest) returns (IndexResponse)

- (void)indexWithRequest:(STSCHIndexRequest *)request handler:(void(^)(STSCHIndexResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToIndexWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToIndexWithRequest:(STSCHIndexRequest *)request handler:(void(^)(STSCHIndexResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Index"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STSCHIndexResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Delete(DeleteRequest) returns (DeleteResponse)

- (void)deleteWithRequest:(STSCHDeleteRequest *)request handler:(void(^)(STSCHDeleteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteWithRequest:(STSCHDeleteRequest *)request handler:(void(^)(STSCHDeleteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Delete"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STSCHDeleteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Search(SearchRequest) returns (stream SearchResponse)

- (void)searchWithRequest:(STSCHSearchRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSearchWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(STSCHSearchRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STSCHSearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
