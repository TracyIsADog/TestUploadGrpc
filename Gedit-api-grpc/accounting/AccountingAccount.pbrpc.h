#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "accounting/AccountingAccount.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCANTAccountResponse;
  @class ACCANTGetAccountRequest;
  @class ACCANTUpsertAccountsRequest;
  @class ACCANTUserAndType;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCANTAccountingAccountApi <NSObject>

#pragma mark UpsertAccounts(UpsertAccountsRequest) returns (stream AccountResponse)

- (void)upsertAccountsWithRequest:(ACCANTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToUpsertAccountsWithRequest:(ACCANTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetAccount(GetAccountRequest) returns (AccountResponse)

- (void)getAccountWithRequest:(ACCANTGetAccountRequest *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountWithRequest:(ACCANTGetAccountRequest *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindOneAccountBy(UserAndType) returns (AccountResponse)

- (void)findOneAccountByWithRequest:(ACCANTUserAndType *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindOneAccountByWithRequest:(ACCANTUserAndType *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCANTAccountingAccountApi : GRPCProtoService<ACCANTAccountingAccountApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
