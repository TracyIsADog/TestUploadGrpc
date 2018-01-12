#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "payment/Payment.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PAYMENTCreateRequest;
  @class PAYMENTGetRequest;
  @class PAYMENTListMyRequest;
  @class PAYMENTListRequest;
  @class PAYMENTPaymentResponse;
  @class PAYMENTUpdateWithAlipayBackRequest;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PAYMENTPaymentApi <NSObject>

#pragma mark Create(CreateRequest) returns (PaymentResponse)

- (void)createWithRequest:(PAYMENTCreateRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateWithRequest:(PAYMENTCreateRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetRequest) returns (PaymentResponse)

- (void)getWithRequest:(PAYMENTGetRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(PAYMENTGetRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListRequest) returns (stream PaymentResponse)

- (void)listWithRequest:(PAYMENTListRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(PAYMENTListRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMy(ListMyRequest) returns (stream PaymentResponse)

- (void)listMyWithRequest:(PAYMENTListMyRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListMyWithRequest:(PAYMENTListMyRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark UpdateWithAlipayBack(UpdateWithAlipayBackRequest) returns (PaymentResponse)

/**
 * should be using http url called by alipay
 */
- (void)updateWithAlipayBackWithRequest:(PAYMENTUpdateWithAlipayBackRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * should be using http url called by alipay
 */
- (GRPCProtoCall *)RPCToUpdateWithAlipayBackWithRequest:(PAYMENTUpdateWithAlipayBackRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PAYMENTPaymentApi : GRPCProtoService<PAYMENTPaymentApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
