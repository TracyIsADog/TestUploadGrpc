#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "store/StoreSearch.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STSCHDeleteRequest;
  @class STSCHDeleteResponse;
  @class STSCHIndexRequest;
  @class STSCHIndexResponse;
  @class STSCHSearchRequest;
  @class STSCHSearchResponse;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STSCHStoreSearchApi <NSObject>

#pragma mark Index(IndexRequest) returns (IndexResponse)

- (void)indexWithRequest:(STSCHIndexRequest *)request handler:(void(^)(STSCHIndexResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToIndexWithRequest:(STSCHIndexRequest *)request handler:(void(^)(STSCHIndexResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Delete(DeleteRequest) returns (DeleteResponse)

- (void)deleteWithRequest:(STSCHDeleteRequest *)request handler:(void(^)(STSCHDeleteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteWithRequest:(STSCHDeleteRequest *)request handler:(void(^)(STSCHDeleteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchRequest) returns (stream SearchResponse)

- (void)searchWithRequest:(STSCHSearchRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(STSCHSearchRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STSCHStoreSearchApi : GRPCProtoService<STSCHStoreSearchApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
