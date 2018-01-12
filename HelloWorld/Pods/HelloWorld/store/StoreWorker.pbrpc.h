#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "store/StoreWorker.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STWRKAddRequest;
  @class STWRKBanRequest;
  @class STWRKListByStoreRequest;
  @class STWRKListByWorkerRequest;
  @class STWRKWorkshipResponse;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STWRKStoreWorkerApi <NSObject>

#pragma mark Add(AddRequest) returns (WorkshipResponse)

- (void)addWithRequest:(STWRKAddRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(STWRKAddRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListByStoreRequest) returns (stream WorkshipResponse)

- (void)listByStoreWithRequest:(STWRKListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STWRKListByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByWorker(ListByWorkerRequest) returns (stream WorkshipResponse)

- (void)listByWorkerWithRequest:(STWRKListByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByWorkerWithRequest:(STWRKListByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanRequest) returns (WorkshipResponse)

- (void)banWithRequest:(STWRKBanRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STWRKBanRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STWRKStoreWorkerApi : GRPCProtoService<STWRKStoreWorkerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
