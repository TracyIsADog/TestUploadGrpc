#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "accounting/AccountingTx.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCTXBalanceResponse;
  @class ACCTXGetJournalRequest;
  @class ACCTXGetPostingRequest;
  @class ACCTXJournalResponse;
  @class ACCTXListBalanceRequest;
  @class ACCTXListJournalRequest;
  @class ACCTXListPostingRequest;
  @class ACCTXPostingResponse;
  @class ACCTXUpsertJournalRequest;
#else
  #import "Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCTXAccountingTXApi <NSObject>

#pragma mark UpsertJournal(UpsertJournalRequest) returns (JournalResponse)

/**
 * will compute postings at the same time when save Journal
 */
- (void)upsertJournalWithRequest:(ACCTXUpsertJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(ACCTXUpsertJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(ACCTXGetJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetJournalWithRequest:(ACCTXGetJournalRequest *)request handler:(void(^)(ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(ACCTXListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListJournalWithRequest:(ACCTXListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCTXJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetPosting(GetPostingRequest) returns (PostingResponse)

- (void)getPostingWithRequest:(ACCTXGetPostingRequest *)request handler:(void(^)(ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostingWithRequest:(ACCTXGetPostingRequest *)request handler:(void(^)(ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(ACCTXListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListPostingWithRequest:(ACCTXListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCTXPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListBalance(ListBalanceRequest) returns (stream BalanceResponse)

- (void)listBalanceWithRequest:(ACCTXListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCTXBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListBalanceWithRequest:(ACCTXListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCTXBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCTXAccountingTXApi : GRPCProtoService<ACCTXAccountingTXApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
