#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "user/UserFans.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRFANSAddRequest;
  @class USRFANSFanshipResponse;
  @class USRFANSFindParentRequest;
  @class USRFANSListChildRequest;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRFANSUserFansApi <NSObject>

#pragma mark Add(AddRequest) returns (FanshipResponse)

- (void)addWithRequest:(USRFANSAddRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(USRFANSAddRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindParent(FindParentRequest) returns (FanshipResponse)

- (void)findParentWithRequest:(USRFANSFindParentRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindParentWithRequest:(USRFANSFindParentRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListChild(ListChildRequest) returns (stream FanshipResponse)

- (void)listChildWithRequest:(USRFANSListChildRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListChildWithRequest:(USRFANSListChildRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRFANSUserFansApi : GRPCProtoService<USRFANSUserFansApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
