// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: accounting/accounting_account.proto

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

 #import "accounting/AccountingAccount.pbobjc.h"
 #import "Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ACCANTAccountingAccountRoot

@implementation ACCANTAccountingAccountRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ACCANTAccountingAccountRoot_FileDescriptor

static GPBFileDescriptor *ACCANTAccountingAccountRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"accounting_account"
                                                 objcPrefix:@"ACCANT"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - ACCANTUpsertAccountsRequest

@implementation ACCANTUpsertAccountsRequest

@dynamic userId;

typedef struct ACCANTUpsertAccountsRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *userId;
} ACCANTUpsertAccountsRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userId",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTUpsertAccountsRequest_FieldNumber_UserId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ACCANTUpsertAccountsRequest__storage_, userId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ACCANTUpsertAccountsRequest class]
                                     rootClass:[ACCANTAccountingAccountRoot class]
                                          file:ACCANTAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ACCANTUpsertAccountsRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\013\006\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ACCANTAccountResponse

@implementation ACCANTAccountResponse

@dynamic hasStatus, status;
@dynamic hasAccount, account;

typedef struct ACCANTAccountResponse__storage_ {
  uint32_t _has_storage_[1];
  ACCANTAccount *account;
  COMMONStatus *status;
} ACCANTAccountResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(ACCANTAccount),
        .number = ACCANTAccountResponse_FieldNumber_Account,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ACCANTAccountResponse__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = ACCANTAccountResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ACCANTAccountResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ACCANTAccountResponse class]
                                     rootClass:[ACCANTAccountingAccountRoot class]
                                          file:ACCANTAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ACCANTAccountResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ACCANTAccount

@implementation ACCANTAccount

@dynamic uuid;
@dynamic userId;
@dynamic created;
@dynamic type;
@dynamic previousBalance;
@dynamic previousDate;
@dynamic currentChanges;
@dynamic currentDate;
@dynamic currentBalance;

typedef struct ACCANTAccount__storage_ {
  uint32_t _has_storage_[1];
  ACCANTAccount_Type type;
  int32_t previousBalance;
  int32_t currentChanges;
  int32_t currentBalance;
  NSString *uuid;
  NSString *userId;
  int64_t created;
  int64_t previousDate;
  int64_t currentDate;
} ACCANTAccount__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "userId",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_UserId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, userId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_Created,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = ACCANTAccount_Type_EnumDescriptor,
        .number = ACCANTAccount_FieldNumber_Type,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "previousBalance",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_PreviousBalance,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, previousBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "previousDate",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_PreviousDate,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, previousDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentChanges",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_CurrentChanges,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, currentChanges),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "currentDate",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_CurrentDate,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, currentDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentBalance",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTAccount_FieldNumber_CurrentBalance,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(ACCANTAccount__storage_, currentBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ACCANTAccount class]
                                     rootClass:[ACCANTAccountingAccountRoot class]
                                          file:ACCANTAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ACCANTAccount__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\014\006\000\017\017\000\020\014\000\021\016\000\022\013\000\023\016\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t ACCANTAccount_Type_RawValue(ACCANTAccount *message) {
  GPBDescriptor *descriptor = [ACCANTAccount descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ACCANTAccount_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetACCANTAccount_Type_RawValue(ACCANTAccount *message, int32_t value) {
  GPBDescriptor *descriptor = [ACCANTAccount descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ACCANTAccount_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum ACCANTAccount_Type

GPBEnumDescriptor *ACCANTAccount_Type_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Cash\000CurrentPoints\000FixedPoints\000Redpack\000C"
        "oupon\000";
    static const int32_t values[] = {
        ACCANTAccount_Type_Cash,
        ACCANTAccount_Type_CurrentPoints,
        ACCANTAccount_Type_FixedPoints,
        ACCANTAccount_Type_Redpack,
        ACCANTAccount_Type_Coupon,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(ACCANTAccount_Type)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:ACCANTAccount_Type_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL ACCANTAccount_Type_IsValidValue(int32_t value__) {
  switch (value__) {
    case ACCANTAccount_Type_Cash:
    case ACCANTAccount_Type_CurrentPoints:
    case ACCANTAccount_Type_FixedPoints:
    case ACCANTAccount_Type_Redpack:
    case ACCANTAccount_Type_Coupon:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - ACCANTGetAccountRequest

@implementation ACCANTGetAccountRequest

@dynamic uuid;

typedef struct ACCANTGetAccountRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
} ACCANTGetAccountRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTGetAccountRequest_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ACCANTGetAccountRequest__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ACCANTGetAccountRequest class]
                                     rootClass:[ACCANTAccountingAccountRoot class]
                                          file:ACCANTAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ACCANTGetAccountRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ACCANTUserAndType

@implementation ACCANTUserAndType

@dynamic userId;
@dynamic type;

typedef struct ACCANTUserAndType__storage_ {
  uint32_t _has_storage_[1];
  ACCANTAccount_Type type;
  NSString *userId;
} ACCANTUserAndType__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userId",
        .dataTypeSpecific.className = NULL,
        .number = ACCANTUserAndType_FieldNumber_UserId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ACCANTUserAndType__storage_, userId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = ACCANTAccount_Type_EnumDescriptor,
        .number = ACCANTUserAndType_FieldNumber_Type,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ACCANTUserAndType__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ACCANTUserAndType class]
                                     rootClass:[ACCANTAccountingAccountRoot class]
                                          file:ACCANTAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ACCANTUserAndType__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\013\006\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t ACCANTUserAndType_Type_RawValue(ACCANTUserAndType *message) {
  GPBDescriptor *descriptor = [ACCANTUserAndType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ACCANTUserAndType_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetACCANTUserAndType_Type_RawValue(ACCANTUserAndType *message, int32_t value) {
  GPBDescriptor *descriptor = [ACCANTUserAndType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ACCANTUserAndType_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
