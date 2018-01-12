#import "accounting/AccountingAccount.pbrpc.h"
#import "accounting/AccountingAccount.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation ACCANTAccountingAccountApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"accounting_account" serviceName:@"AccountingAccountApi"]);
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


#pragma mark UpsertAccounts(UpsertAccountsRequest) returns (stream AccountResponse)

- (void)upsertAccountsWithRequest:(ACCANTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToUpsertAccountsWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpsertAccountsWithRequest:(ACCANTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"UpsertAccounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCANTAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark GetAccount(GetAccountRequest) returns (AccountResponse)

- (void)getAccountWithRequest:(ACCANTGetAccountRequest *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountWithRequest:(ACCANTGetAccountRequest *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCANTAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FindOneAccountBy(UserAndType) returns (AccountResponse)

- (void)findOneAccountByWithRequest:(ACCANTUserAndType *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindOneAccountByWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindOneAccountByWithRequest:(ACCANTUserAndType *)request handler:(void(^)(ACCANTAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindOneAccountBy"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCANTAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
