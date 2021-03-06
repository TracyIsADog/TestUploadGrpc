// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: store/store_worker.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class COMMONStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - STWRKStoreWorkerRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface STWRKStoreWorkerRoot : GPBRootObject
@end

#pragma mark - STWRKAddRequest

typedef GPB_ENUM(STWRKAddRequest_FieldNumber) {
  STWRKAddRequest_FieldNumber_StoreId = 1,
  STWRKAddRequest_FieldNumber_WorkerId = 3,
};

@interface STWRKAddRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerId;

@end

#pragma mark - STWRKListByStoreRequest

typedef GPB_ENUM(STWRKListByStoreRequest_FieldNumber) {
  STWRKListByStoreRequest_FieldNumber_StoreId = 1,
  STWRKListByStoreRequest_FieldNumber_From = 100,
  STWRKListByStoreRequest_FieldNumber_Size = 101,
};

@interface STWRKListByStoreRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - STWRKListByWorkerRequest

typedef GPB_ENUM(STWRKListByWorkerRequest_FieldNumber) {
  STWRKListByWorkerRequest_FieldNumber_WorkerId = 3,
  STWRKListByWorkerRequest_FieldNumber_From = 100,
  STWRKListByWorkerRequest_FieldNumber_Size = 101,
};

@interface STWRKListByWorkerRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerId;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - STWRKWorkshipResponse

typedef GPB_ENUM(STWRKWorkshipResponse_FieldNumber) {
  STWRKWorkshipResponse_FieldNumber_WorkerId = 1,
  STWRKWorkshipResponse_FieldNumber_StoreId = 5,
  STWRKWorkshipResponse_FieldNumber_Active = 7,
  STWRKWorkshipResponse_FieldNumber_Created = 9,
  STWRKWorkshipResponse_FieldNumber_LastUpdated = 10,
  STWRKWorkshipResponse_FieldNumber_From = 100,
  STWRKWorkshipResponse_FieldNumber_Status = 999,
};

@interface STWRKWorkshipResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) BOOL active;

@property(nonatomic, readwrite) int64_t created;

@property(nonatomic, readwrite) int64_t lastUpdated;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - STWRKBanRequest

typedef GPB_ENUM(STWRKBanRequest_FieldNumber) {
  STWRKBanRequest_FieldNumber_WorkerId = 1,
  STWRKBanRequest_FieldNumber_StoreId = 5,
  STWRKBanRequest_FieldNumber_Active = 7,
};

@interface STWRKBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) BOOL active;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
