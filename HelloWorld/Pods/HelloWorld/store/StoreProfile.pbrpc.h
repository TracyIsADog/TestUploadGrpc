#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "store/StoreProfile.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STPRFBanRequest;
  @class STPRFBanResponse;
  @class STPRFCreateRequest;
  @class STPRFCreateResponse;
  @class STPRFFindByNameRequest;
  @class STPRFGetRequest;
  @class STPRFListRequest;
  @class STPRFStoreProfileResponse;
  @class STPRFUpdateRequest;
  @class STPRFUpdateResponse;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STPRFStoreProfileApi <NSObject>

#pragma mark Create(CreateRequest) returns (CreateResponse)

- (void)createWithRequest:(STPRFCreateRequest *)request handler:(void(^)(STPRFCreateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateWithRequest:(STPRFCreateRequest *)request handler:(void(^)(STPRFCreateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateRequest) returns (UpdateResponse)

- (void)updateWithRequest:(STPRFUpdateRequest *)request handler:(void(^)(STPRFUpdateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(STPRFUpdateRequest *)request handler:(void(^)(STPRFUpdateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(STPRFGetRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(STPRFGetRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(STPRFListRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(STPRFListRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark FindByName(FindByNameRequest) returns (StoreProfileResponse)

- (void)findByNameWithRequest:(STPRFFindByNameRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindByNameWithRequest:(STPRFFindByNameRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Ban(BanRequest) returns (BanResponse)

- (void)banWithRequest:(STPRFBanRequest *)request handler:(void(^)(STPRFBanResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STPRFBanRequest *)request handler:(void(^)(STPRFBanResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STPRFStoreProfileApi : GRPCProtoService<STPRFStoreProfileApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
