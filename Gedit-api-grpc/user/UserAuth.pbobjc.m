// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: user/user_auth.proto

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

 #import "user/UserAuth.pbobjc.h"
 #import "Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - USRATHUserAuthRoot

@implementation USRATHUserAuthRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - USRATHUserAuthRoot_FileDescriptor

static GPBFileDescriptor *USRATHUserAuthRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"user_auth"
                                                 objcPrefix:@"USRATH"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - USRATHSigninQQRequest

@implementation USRATHSigninQQRequest

@dynamic accessToken;

typedef struct USRATHSigninQQRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} USRATHSigninQQRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninQQRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSigninQQRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSigninQQRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSigninQQRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSigninWechatRequest

@implementation USRATHSigninWechatRequest

@dynamic accessToken;

typedef struct USRATHSigninWechatRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} USRATHSigninWechatRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninWechatRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSigninWechatRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSigninWechatRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSigninWechatRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSigninWeiboRequest

@implementation USRATHSigninWeiboRequest

@dynamic accessToken;

typedef struct USRATHSigninWeiboRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} USRATHSigninWeiboRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninWeiboRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSigninWeiboRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSigninWeiboRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSigninWeiboRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSigninWithPasswordRequest

@implementation USRATHSigninWithPasswordRequest

@dynamic mobile;
@dynamic password;

typedef struct USRATHSigninWithPasswordRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *password;
} USRATHSigninWithPasswordRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninWithPasswordRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSigninWithPasswordRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "password",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninWithPasswordRequest_FieldNumber_Password,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHSigninWithPasswordRequest__storage_, password),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSigninWithPasswordRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSigninWithPasswordRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSmsStep1QuestionRequest

@implementation USRATHSmsStep1QuestionRequest

@dynamic mobile;

typedef struct USRATHSmsStep1QuestionRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
} USRATHSmsStep1QuestionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep1QuestionRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSmsStep1QuestionRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSmsStep1QuestionRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSmsStep1QuestionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSmsStep1QuestionResponse

@implementation USRATHSmsStep1QuestionResponse

@dynamic token;
@dynamic questionTip;
@dynamic questionArray, questionArray_Count;

typedef struct USRATHSmsStep1QuestionResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *token;
  NSString *questionTip;
  NSMutableArray *questionArray;
} USRATHSmsStep1QuestionResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "token",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep1QuestionResponse_FieldNumber_Token,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSmsStep1QuestionResponse__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionTip",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep1QuestionResponse_FieldNumber_QuestionTip,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHSmsStep1QuestionResponse__storage_, questionTip),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionArray",
        .dataTypeSpecific.className = GPBStringifySymbol(USRATHQuestion),
        .number = USRATHSmsStep1QuestionResponse_FieldNumber_QuestionArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(USRATHSmsStep1QuestionResponse__storage_, questionArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSmsStep1QuestionResponse class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSmsStep1QuestionResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHQuestion

@implementation USRATHQuestion

@dynamic uuid;
@dynamic image;

typedef struct USRATHQuestion__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
  NSString *image;
} USRATHQuestion__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = USRATHQuestion_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHQuestion__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "image",
        .dataTypeSpecific.className = NULL,
        .number = USRATHQuestion_FieldNumber_Image,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHQuestion__storage_, image),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHQuestion class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHQuestion__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSmsStep2AnswerRequest

@implementation USRATHSmsStep2AnswerRequest

@dynamic mobile;
@dynamic token;
@dynamic questionIdArray, questionIdArray_Count;

typedef struct USRATHSmsStep2AnswerRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *token;
  NSMutableArray *questionIdArray;
} USRATHSmsStep2AnswerRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep2AnswerRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSmsStep2AnswerRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "token",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep2AnswerRequest_FieldNumber_Token,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHSmsStep2AnswerRequest__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionIdArray",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep2AnswerRequest_FieldNumber_QuestionIdArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(USRATHSmsStep2AnswerRequest__storage_, questionIdArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSmsStep2AnswerRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSmsStep2AnswerRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\003\000questionId\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSmsStep2AnswerResponse

@implementation USRATHSmsStep2AnswerResponse

@dynamic hasStatus, status;

typedef struct USRATHSmsStep2AnswerResponse__storage_ {
  uint32_t _has_storage_[1];
  COMMONStatus *status;
} USRATHSmsStep2AnswerResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = USRATHSmsStep2AnswerResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSmsStep2AnswerResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSmsStep2AnswerResponse class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSmsStep2AnswerResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSmsStep3SigninRequest

@implementation USRATHSmsStep3SigninRequest

@dynamic mobile;
@dynamic smscode;

typedef struct USRATHSmsStep3SigninRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *smscode;
} USRATHSmsStep3SigninRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep3SigninRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSmsStep3SigninRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "smscode",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSmsStep3SigninRequest_FieldNumber_Smscode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHSmsStep3SigninRequest__storage_, smscode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSmsStep3SigninRequest class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSmsStep3SigninRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRATHSigninResponse

@implementation USRATHSigninResponse

@dynamic hasStatus, status;
@dynamic accessToken;
@dynamic expiresIn;

typedef struct USRATHSigninResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
  NSString *expiresIn;
  COMMONStatus *status;
} USRATHSigninResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninResponse_FieldNumber_AccessToken,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRATHSigninResponse__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expiresIn",
        .dataTypeSpecific.className = NULL,
        .number = USRATHSigninResponse_FieldNumber_ExpiresIn,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(USRATHSigninResponse__storage_, expiresIn),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = USRATHSigninResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRATHSigninResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRATHSigninResponse class]
                                     rootClass:[USRATHUserAuthRoot class]
                                          file:USRATHUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRATHSigninResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\002\013\000\003\t\000";
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
