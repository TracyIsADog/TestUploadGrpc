#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "promotion/Promotion.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PROMAddRequest;
  @class PROMAddResponse;
  @class PROMFindRequest;
  @class PROMGetRequest;
  @class PROMListRequest;
  @class PROMPromotionResponse;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PROMPromotionApi <NSObject>

#pragma mark Add(AddRequest) returns (AddResponse)

- (void)addWithRequest:(PROMAddRequest *)request handler:(void(^)(PROMAddResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(PROMAddRequest *)request handler:(void(^)(PROMAddResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetRequest) returns (PromotionResponse)

- (void)getWithRequest:(PROMGetRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(PROMGetRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Find(FindRequest) returns (PromotionResponse)

- (void)findWithRequest:(PROMFindRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindWithRequest:(PROMFindRequest *)request handler:(void(^)(PROMPromotionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListRequest) returns (stream PromotionResponse)

- (void)listWithRequest:(PROMListRequest *)request eventHandler:(void(^)(BOOL done, PROMPromotionResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(PROMListRequest *)request eventHandler:(void(^)(BOOL done, PROMPromotionResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PROMPromotionApi : GRPCProtoService<PROMPromotionApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
