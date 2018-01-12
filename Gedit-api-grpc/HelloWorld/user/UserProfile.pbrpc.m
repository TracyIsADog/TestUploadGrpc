#import "user/UserProfile.pbrpc.h"
#import "user/UserProfile.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation USRPROFUserProfileApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"user_profile" serviceName:@"UserProfileApi"]);
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


#pragma mark Add(AddRequest) returns (AddResponse)

- (void)addWithRequest:(USRPROFAddRequest *)request handler:(void(^)(USRPROFAddResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(USRPROFAddRequest *)request handler:(void(^)(USRPROFAddResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFAddResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetRequest) returns (UserProfileResponse)

- (void)getWithRequest:(USRPROFGetRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(USRPROFGetRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Find(FindRequest) returns (UserProfileResponse)

- (void)findWithRequest:(USRPROFFindRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindWithRequest:(USRPROFFindRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Find"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListRequest) returns (stream UserProfileResponse)

- (void)listWithRequest:(USRPROFListRequest *)request eventHandler:(void(^)(BOOL done, USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(USRPROFListRequest *)request eventHandler:(void(^)(BOOL done, USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark UpdateMyProfile(UpdateMyProfileRequest) returns (UpdateMyProfileResponse)

- (void)updateMyProfileWithRequest:(USRPROFUpdateMyProfileRequest *)request handler:(void(^)(USRPROFUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateMyProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateMyProfileWithRequest:(USRPROFUpdateMyProfileRequest *)request handler:(void(^)(USRPROFUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateMyProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFUpdateMyProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Ban(BanRequest) returns (UserProfileResponse)

- (void)banWithRequest:(USRPROFBanRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(USRPROFBanRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRPROFUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
