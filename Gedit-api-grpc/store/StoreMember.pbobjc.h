// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: store/store_member.proto

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

#pragma mark - STMEMStoreMemberRoot

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
@interface STMEMStoreMemberRoot : GPBRootObject
@end

#pragma mark - STMEMAddRequest

typedef GPB_ENUM(STMEMAddRequest_FieldNumber) {
  STMEMAddRequest_FieldNumber_StoreId = 1,
  STMEMAddRequest_FieldNumber_MemberId = 3,
};

@interface STMEMAddRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@end

#pragma mark - STMEMUpdateRequest

typedef GPB_ENUM(STMEMUpdateRequest_FieldNumber) {
  STMEMUpdateRequest_FieldNumber_MemberId = 1,
  STMEMUpdateRequest_FieldNumber_MemberType = 3,
  STMEMUpdateRequest_FieldNumber_StoreId = 5,
  STMEMUpdateRequest_FieldNumber_StartTime = 9,
  STMEMUpdateRequest_FieldNumber_EndTime = 10,
  STMEMUpdateRequest_FieldNumber_IsMemberTypeUpdate = 100,
  STMEMUpdateRequest_FieldNumber_IsStartTimeUpdate = 102,
  STMEMUpdateRequest_FieldNumber_IsEndTimeUpdate = 103,
};

@interface STMEMUpdateRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberType;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) int64_t startTime;

@property(nonatomic, readwrite) int64_t endTime;

@property(nonatomic, readwrite) BOOL isMemberTypeUpdate;

@property(nonatomic, readwrite) BOOL isStartTimeUpdate;

@property(nonatomic, readwrite) BOOL isEndTimeUpdate;

@end

#pragma mark - STMEMListByStoreRequest

typedef GPB_ENUM(STMEMListByStoreRequest_FieldNumber) {
  STMEMListByStoreRequest_FieldNumber_StoreId = 1,
  STMEMListByStoreRequest_FieldNumber_From = 100,
  STMEMListByStoreRequest_FieldNumber_Size = 101,
};

@interface STMEMListByStoreRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - STMEMListByMemberRequest

typedef GPB_ENUM(STMEMListByMemberRequest_FieldNumber) {
  STMEMListByMemberRequest_FieldNumber_MemberId = 3,
  STMEMListByMemberRequest_FieldNumber_From = 100,
  STMEMListByMemberRequest_FieldNumber_Size = 101,
};

@interface STMEMListByMemberRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - STMEMMembershipResponse

typedef GPB_ENUM(STMEMMembershipResponse_FieldNumber) {
  STMEMMembershipResponse_FieldNumber_MemberId = 1,
  STMEMMembershipResponse_FieldNumber_MemberType = 3,
  STMEMMembershipResponse_FieldNumber_StoreId = 5,
  STMEMMembershipResponse_FieldNumber_Active = 7,
  STMEMMembershipResponse_FieldNumber_StartTime = 9,
  STMEMMembershipResponse_FieldNumber_EndTime = 10,
  STMEMMembershipResponse_FieldNumber_From = 100,
  STMEMMembershipResponse_FieldNumber_Status = 999,
};

@interface STMEMMembershipResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberType;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) BOOL active;

@property(nonatomic, readwrite) int64_t startTime;

@property(nonatomic, readwrite) int64_t endTime;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - STMEMBanRequest

typedef GPB_ENUM(STMEMBanRequest_FieldNumber) {
  STMEMBanRequest_FieldNumber_MemberId = 1,
  STMEMBanRequest_FieldNumber_StoreId = 5,
  STMEMBanRequest_FieldNumber_Active = 7,
};

@interface STMEMBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - STMEMBanResponse

typedef GPB_ENUM(STMEMBanResponse_FieldNumber) {
  STMEMBanResponse_FieldNumber_MemberId = 1,
  STMEMBanResponse_FieldNumber_StoreId = 5,
  STMEMBanResponse_FieldNumber_Active = 7,
  STMEMBanResponse_FieldNumber_Status = 999,
};

@interface STMEMBanResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeId;

@property(nonatomic, readwrite) BOOL active;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
