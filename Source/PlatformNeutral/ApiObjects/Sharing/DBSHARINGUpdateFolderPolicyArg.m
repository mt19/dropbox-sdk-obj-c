///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGAclUpdatePolicy.h"
#import "DBSHARINGMemberPolicy.h"
#import "DBSHARINGSharedLinkPolicy.h"
#import "DBSHARINGUpdateFolderPolicyArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUpdateFolderPolicyArg 

#pragma mark - Constructors

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId memberPolicy:(DBSHARINGMemberPolicy *)memberPolicy aclUpdatePolicy:(DBSHARINGAclUpdatePolicy *)aclUpdatePolicy sharedLinkPolicy:(DBSHARINGSharedLinkPolicy *)sharedLinkPolicy {
    [DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

    self = [super init];
    if (self) {
        _sharedFolderId = sharedFolderId;
        _memberPolicy = memberPolicy;
        _aclUpdatePolicy = aclUpdatePolicy;
        _sharedLinkPolicy = sharedLinkPolicy;
    }
    return self;
}

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
    return [self initWithSharedFolderId:sharedFolderId memberPolicy:nil aclUpdatePolicy:nil sharedLinkPolicy:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGUpdateFolderPolicyArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGUpdateFolderPolicyArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGUpdateFolderPolicyArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGUpdateFolderPolicyArgSerializer 

+ (NSDictionary *)serialize:(DBSHARINGUpdateFolderPolicyArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = valueObj.sharedFolderId;
    if (valueObj.memberPolicy) {
        jsonDict[@"member_policy"] = [DBSHARINGMemberPolicySerializer serialize:valueObj.memberPolicy];
    }
    if (valueObj.aclUpdatePolicy) {
        jsonDict[@"acl_update_policy"] = [DBSHARINGAclUpdatePolicySerializer serialize:valueObj.aclUpdatePolicy];
    }
    if (valueObj.sharedLinkPolicy) {
        jsonDict[@"shared_link_policy"] = [DBSHARINGSharedLinkPolicySerializer serialize:valueObj.sharedLinkPolicy];
    }

    return jsonDict;
}

+ (DBSHARINGUpdateFolderPolicyArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = valueDict[@"shared_folder_id"];
    DBSHARINGMemberPolicy *memberPolicy = valueDict[@"member_policy"] ? [DBSHARINGMemberPolicySerializer deserialize:valueDict[@"member_policy"]] : nil;
    DBSHARINGAclUpdatePolicy *aclUpdatePolicy = valueDict[@"acl_update_policy"] ? [DBSHARINGAclUpdatePolicySerializer deserialize:valueDict[@"acl_update_policy"]] : nil;
    DBSHARINGSharedLinkPolicy *sharedLinkPolicy = valueDict[@"shared_link_policy"] ? [DBSHARINGSharedLinkPolicySerializer deserialize:valueDict[@"shared_link_policy"]] : nil;

    return [[DBSHARINGUpdateFolderPolicyArg alloc] initWithSharedFolderId:sharedFolderId memberPolicy:memberPolicy aclUpdatePolicy:aclUpdatePolicy sharedLinkPolicy:sharedLinkPolicy];
}

@end