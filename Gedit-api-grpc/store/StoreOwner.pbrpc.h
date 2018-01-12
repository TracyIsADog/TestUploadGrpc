#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "store/StoreOwner.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STOWNListByOwnerRequest;
  @class STOWNOwnershipResponse;
  @class STOWNTransferRequest;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STOWNStoreOwnerApi <NSObject>

#pragma mark Transfer(TransferRequest) returns (OwnershipResponse)

- (void)transferWithRequest:(STOWNTransferRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToTransferWithRequest:(STOWNTransferRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByOwner(ListByOwnerRequest) returns (stream OwnershipResponse)

- (void)listByOwnerWithRequest:(STOWNListByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByOwnerWithRequest:(STOWNListByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STOWNStoreOwnerApi : GRPCProtoService<STOWNStoreOwnerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
