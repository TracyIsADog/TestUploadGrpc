// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: store/store_search.proto

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

@class COMMONLocation;
@class COMMONStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - STSCHStoreSearchRoot

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
@interface STSCHStoreSearchRoot : GPBRootObject
@end

#pragma mark - STSCHIndexRequest

typedef GPB_ENUM(STSCHIndexRequest_FieldNumber) {
  STSCHIndexRequest_FieldNumber_Uuid = 1,
  STSCHIndexRequest_FieldNumber_Name = 2,
  STSCHIndexRequest_FieldNumber_Logo = 3,
  STSCHIndexRequest_FieldNumber_Location = 4,
  STSCHIndexRequest_FieldNumber_Type = 6,
  STSCHIndexRequest_FieldNumber_Desc = 7,
  STSCHIndexRequest_FieldNumber_BonusRate = 8,
};

@interface STSCHIndexRequest : GPBMessage

/** store uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, strong, null_resettable) COMMONLocation *location;
/** Test to see if @c location has been set. */
@property(nonatomic, readwrite) BOOL hasLocation;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite) int32_t bonusRate;

@end

#pragma mark - STSCHIndexResponse

typedef GPB_ENUM(STSCHIndexResponse_FieldNumber) {
  STSCHIndexResponse_FieldNumber_Uuid = 1,
  STSCHIndexResponse_FieldNumber_Status = 999,
};

@interface STSCHIndexResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

/** store uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - STSCHDeleteRequest

typedef GPB_ENUM(STSCHDeleteRequest_FieldNumber) {
  STSCHDeleteRequest_FieldNumber_Uuid = 1,
};

@interface STSCHDeleteRequest : GPBMessage

/** store uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - STSCHDeleteResponse

typedef GPB_ENUM(STSCHDeleteResponse_FieldNumber) {
  STSCHDeleteResponse_FieldNumber_Uuid = 1,
  STSCHDeleteResponse_FieldNumber_Status = 999,
};

@interface STSCHDeleteResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

/** store uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - STSCHSearchRequest

typedef GPB_ENUM(STSCHSearchRequest_FieldNumber) {
  STSCHSearchRequest_FieldNumber_Lat = 1,
  STSCHSearchRequest_FieldNumber_Lon = 2,
  STSCHSearchRequest_FieldNumber_Type = 3,
  STSCHSearchRequest_FieldNumber_Keyword = 4,
  STSCHSearchRequest_FieldNumber_From = 100,
  STSCHSearchRequest_FieldNumber_Size = 101,
};

@interface STSCHSearchRequest : GPBMessage

@property(nonatomic, readwrite) double lat;

@property(nonatomic, readwrite) double lon;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *keyword;

/** refer to https://www.elastic.co/guide/en/elasticsearch/client/java-rest/6.1/java-rest-high-search.html */
@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - STSCHSearchResponse

typedef GPB_ENUM(STSCHSearchResponse_FieldNumber) {
  STSCHSearchResponse_FieldNumber_Uuid = 1,
  STSCHSearchResponse_FieldNumber_Name = 2,
  STSCHSearchResponse_FieldNumber_Logo = 3,
  STSCHSearchResponse_FieldNumber_Location = 4,
  STSCHSearchResponse_FieldNumber_Type = 6,
  STSCHSearchResponse_FieldNumber_Desc = 7,
  STSCHSearchResponse_FieldNumber_BonusRate = 8,
  STSCHSearchResponse_FieldNumber_From = 100,
  STSCHSearchResponse_FieldNumber_Status = 999,
};

@interface STSCHSearchResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

/** store uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, strong, null_resettable) COMMONLocation *location;
/** Test to see if @c location has been set. */
@property(nonatomic, readwrite) BOOL hasLocation;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite) int32_t bonusRate;

/** refer to https://www.elastic.co/guide/en/elasticsearch/client/java-rest/6.1/java-rest-high-search.html */
@property(nonatomic, readwrite) int32_t from;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
