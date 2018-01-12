#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "store/StoreMember.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STMEMAddRequest;
  @class STMEMBanRequest;
  @class STMEMBanResponse;
  @class STMEMListByMemberRequest;
  @class STMEMListByStoreRequest;
  @class STMEMMembershipResponse;
  @class STMEMUpdateRequest;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STMEMStoreMemberApi <NSObject>

#pragma mark Add(AddRequest) returns (MembershipResponse)

- (void)addWithRequest:(STMEMAddRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(STMEMAddRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateRequest) returns (MembershipResponse)

- (void)updateWithRequest:(STMEMUpdateRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(STMEMUpdateRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListByStoreRequest) returns (stream MembershipResponse)

- (void)listByStoreWithRequest:(STMEMListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STMEMListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByMember(ListByMemberRequest) returns (stream MembershipResponse)

- (void)listByMemberWithRequest:(STMEMListByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByMemberWithRequest:(STMEMListByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanRequest) returns (BanResponse)

- (void)banWithRequest:(STMEMBanRequest *)request handler:(void(^)(STMEMBanResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STMEMBanRequest *)request handler:(void(^)(STMEMBanResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STMEMStoreMemberApi : GRPCProtoService<STMEMStoreMemberApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
