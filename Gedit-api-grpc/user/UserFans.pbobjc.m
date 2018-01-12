// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: user/user_fans.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "user/UserFans.pbobjc.h"
 #import "Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - USRFANSUserFansRoot

@implementation USRFANSUserFansRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - USRFANSUserFansRoot_FileDescriptor

static GPBFileDescriptor *USRFANSUserFansRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"user_fans"
                                                 objcPrefix:@"USRFANS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - USRFANSAddRequest

@implementation USRFANSAddRequest

@dynamic fanId;

typedef struct USRFANSAddRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *fanId;
} USRFANSAddRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanId",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSAddRequest_FieldNumber_FanId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSAddRequest__storage_, fanId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSAddRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSAddRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\005\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSFindParentRequest

@implementation USRFANSFindParentRequest

@dynamic fanId;

typedef struct USRFANSFindParentRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *fanId;
} USRFANSFindParentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanId",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFindParentRequest_FieldNumber_FanId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFindParentRequest__storage_, fanId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFindParentRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFindParentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\005\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSListChildRequest

@implementation USRFANSListChildRequest

@dynamic parentId;
@dynamic from;
@dynamic size;

typedef struct USRFANSListChildRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *parentId;
} USRFANSListChildRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parentId",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildRequest_FieldNumber_ParentId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSListChildRequest__storage_, parentId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildRequest_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSListChildRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildRequest_FieldNumber_Size,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(USRFANSListChildRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSListChildRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSListChildRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSFanshipResponse

@implementation USRFANSFanshipResponse

@dynamic hasStatus, status;
@dynamic hasFanship, fanship;

typedef struct USRFANSFanshipResponse__storage_ {
  uint32_t _has_storage_[1];
  USRFANSFanship *fanship;
  COMMONStatus *status;
} USRFANSFanshipResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanship",
        .dataTypeSpecific.className = GPBStringifySymbol(USRFANSFanship),
        .number = USRFANSFanshipResponse_FieldNumber_Fanship,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSFanshipResponse__storage_, fanship),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = USRFANSFanshipResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFanshipResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFanshipResponse class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFanshipResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSFanship

@implementation USRFANSFanship

@dynamic parentId;
@dynamic parentName;
@dynamic fanId;
@dynamic name;
@dynamic created;

typedef struct USRFANSFanship__storage_ {
  uint32_t _has_storage_[1];
  NSString *parentId;
  NSString *fanId;
  NSString *name;
  NSString *parentName;
  int64_t created;
} USRFANSFanship__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parentId",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_ParentId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, parentId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fanId",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_FanId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, fanId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_Name,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_Created,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "parentName",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_ParentName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, parentName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFanship class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFanship__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\001\010\000\002\005\000\013\n\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)