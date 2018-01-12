#import "payment/Payment.pbrpc.h"
#import "payment/Payment.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation PAYMENTPaymentApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"payment" serviceName:@"PaymentApi"]);
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


#pragma mark Create(CreateRequest) returns (PaymentResponse)

- (void)createWithRequest:(PAYMENTCreateRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateWithRequest:(PAYMENTCreateRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PAYMENTPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetRequest) returns (PaymentResponse)

- (void)getWithRequest:(PAYMENTGetRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(PAYMENTGetRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PAYMENTPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListRequest) returns (stream PaymentResponse)

- (void)listWithRequest:(PAYMENTListRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(PAYMENTListRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PAYMENTPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMy(ListMyRequest) returns (stream PaymentResponse)

- (void)listMyWithRequest:(PAYMENTListMyRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListMyWithRequest:(PAYMENTListMyRequest *)request eventHandler:(void(^)(BOOL done, PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMy"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PAYMENTPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark UpdateWithAlipayBack(UpdateWithAlipayBackRequest) returns (PaymentResponse)

/**
 * should be using http url called by alipay
 */
- (void)updateWithAlipayBackWithRequest:(PAYMENTUpdateWithAlipayBackRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithAlipayBackWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be using http url called by alipay
 */
- (GRPCProtoCall *)RPCToUpdateWithAlipayBackWithRequest:(PAYMENTUpdateWithAlipayBackRequest *)request handler:(void(^)(PAYMENTPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateWithAlipayBack"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PAYMENTPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
