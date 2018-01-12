#import "accounting/AccountingTx.pbrpc.h"
#import "accounting/AccountingTx.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "Common.pbobjc.h"

@implementation ACCTXAccountingTXApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"accounting_tx" serviceName:@"AccountingTXApi"]);
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


#pragma mark UpsertJournal(UpsertJournalRequest) returns (JournalResponse)

/**
 * will compute postings at the same time when save Journal
 */
- (void)upsertJournalWithRequest:(ACCTXUpsertJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(ACCTXUpsertJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpsertJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(ACCTXGetJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetJournalWithRequest:(ACCTXGetJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(ACCTXListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListJournalWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListJournalWithRequest:(ACCTXListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark GetPosting(GetPostingRequest) returns (PostingResponse)

- (void)getPostingWithRequest:(ACCTXGetPostingRequest *)request handler:(void(^)(ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostingWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostingWithRequest:(ACCTXGetPostingRequest *)request handler:(void(^)(ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(ACCTXListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListPostingWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListPostingWithRequest:(ACCTXListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListBalance(ListBalanceRequest) returns (stream BalanceResponse)

- (void)listBalanceWithRequest:(ACCTXListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCTXBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListBalanceWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListBalanceWithRequest:(ACCTXListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCTXBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListBalance"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCTXBalanceResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
