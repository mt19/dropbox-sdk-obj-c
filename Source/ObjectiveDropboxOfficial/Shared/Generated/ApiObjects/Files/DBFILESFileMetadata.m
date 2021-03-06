///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESFileMetadata.h"
#import "DBFILESFileSharingInfo.h"
#import "DBFILESMediaInfo.h"
#import "DBFILESMetadata.h"
#import "DBPROPERTIESPropertyGroup.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESFileMetadata

#pragma mark - Constructors

- (instancetype)initWithName:(NSString *)name
                         id_:(NSString *)id_
              clientModified:(NSDate *)clientModified
              serverModified:(NSDate *)serverModified
                         rev:(NSString *)rev
                        size:(NSNumber *)size
                   pathLower:(NSString *)pathLower
                 pathDisplay:(NSString *)pathDisplay
        parentSharedFolderId:(NSString *)parentSharedFolderId
                   mediaInfo:(DBFILESMediaInfo *)mediaInfo
                 sharingInfo:(DBFILESFileSharingInfo *)sharingInfo
              propertyGroups:(NSArray<DBPROPERTIESPropertyGroup *> *)propertyGroups
    hasExplicitSharedMembers:(NSNumber *)hasExplicitSharedMembers {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](id_);
  [DBStoneValidators stringValidator:@(9) maxLength:nil pattern:@"[0-9a-f]+"](rev);
  [DBStoneValidators
   nullableValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](
      parentSharedFolderId);
  [DBStoneValidators
   nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](propertyGroups);

  self =
      [super initWithName:name pathLower:pathLower pathDisplay:pathDisplay parentSharedFolderId:parentSharedFolderId];
  if (self) {
    _id_ = id_;
    _clientModified = clientModified;
    _serverModified = serverModified;
    _rev = rev;
    _size = size;
    _mediaInfo = mediaInfo;
    _sharingInfo = sharingInfo;
    _propertyGroups = propertyGroups;
    _hasExplicitSharedMembers = hasExplicitSharedMembers;
  }
  return self;
}

- (instancetype)initWithName:(NSString *)name
                         id_:(NSString *)id_
              clientModified:(NSDate *)clientModified
              serverModified:(NSDate *)serverModified
                         rev:(NSString *)rev
                        size:(NSNumber *)size {
  return [self initWithName:name
                           id_:id_
                clientModified:clientModified
                serverModified:serverModified
                           rev:rev
                          size:size
                     pathLower:nil
                   pathDisplay:nil
          parentSharedFolderId:nil
                     mediaInfo:nil
                   sharingInfo:nil
                propertyGroups:nil
      hasExplicitSharedMembers:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESFileMetadataSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESFileMetadataSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESFileMetadataSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESFileMetadataSerializer

+ (NSDictionary *)serialize:(DBFILESFileMetadata *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"name"] = valueObj.name;
  jsonDict[@"id"] = valueObj.id_;
  jsonDict[@"client_modified"] =
      [DBNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  jsonDict[@"server_modified"] =
      [DBNSDateSerializer serialize:valueObj.serverModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  jsonDict[@"rev"] = valueObj.rev;
  jsonDict[@"size"] = valueObj.size;
  if (valueObj.pathLower) {
    jsonDict[@"path_lower"] = valueObj.pathLower;
  }
  if (valueObj.pathDisplay) {
    jsonDict[@"path_display"] = valueObj.pathDisplay;
  }
  if (valueObj.parentSharedFolderId) {
    jsonDict[@"parent_shared_folder_id"] = valueObj.parentSharedFolderId;
  }
  if (valueObj.mediaInfo) {
    jsonDict[@"media_info"] = [DBFILESMediaInfoSerializer serialize:valueObj.mediaInfo];
  }
  if (valueObj.sharingInfo) {
    jsonDict[@"sharing_info"] = [DBFILESFileSharingInfoSerializer serialize:valueObj.sharingInfo];
  }
  if (valueObj.propertyGroups) {
    jsonDict[@"property_groups"] = [DBArraySerializer serialize:valueObj.propertyGroups
                                                      withBlock:^id(id elem) {
                                                        return [DBPROPERTIESPropertyGroupSerializer serialize:elem];
                                                      }];
  }
  if (valueObj.hasExplicitSharedMembers) {
    jsonDict[@"has_explicit_shared_members"] = valueObj.hasExplicitSharedMembers;
  }

  return jsonDict;
}

+ (DBFILESFileMetadata *)deserialize:(NSDictionary *)valueDict {
  NSString *name = valueDict[@"name"];
  NSString *id_ = valueDict[@"id"];
  NSDate *clientModified =
      [DBNSDateSerializer deserialize:valueDict[@"client_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  NSDate *serverModified =
      [DBNSDateSerializer deserialize:valueDict[@"server_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  NSString *rev = valueDict[@"rev"];
  NSNumber *size = valueDict[@"size"];
  NSString *pathLower = valueDict[@"path_lower"] ?: nil;
  NSString *pathDisplay = valueDict[@"path_display"] ?: nil;
  NSString *parentSharedFolderId = valueDict[@"parent_shared_folder_id"] ?: nil;
  DBFILESMediaInfo *mediaInfo =
      valueDict[@"media_info"] ? [DBFILESMediaInfoSerializer deserialize:valueDict[@"media_info"]] : nil;
  DBFILESFileSharingInfo *sharingInfo =
      valueDict[@"sharing_info"] ? [DBFILESFileSharingInfoSerializer deserialize:valueDict[@"sharing_info"]] : nil;
  NSArray<DBPROPERTIESPropertyGroup *> *propertyGroups =
      valueDict[@"property_groups"]
          ? [DBArraySerializer deserialize:valueDict[@"property_groups"]
                                 withBlock:^id(id elem) {
                                   return [DBPROPERTIESPropertyGroupSerializer deserialize:elem];
                                 }]
          : nil;
  NSNumber *hasExplicitSharedMembers = valueDict[@"has_explicit_shared_members"] ?: nil;

  return [[DBFILESFileMetadata alloc] initWithName:name
                                               id_:id_
                                    clientModified:clientModified
                                    serverModified:serverModified
                                               rev:rev
                                              size:size
                                         pathLower:pathLower
                                       pathDisplay:pathDisplay
                              parentSharedFolderId:parentSharedFolderId
                                         mediaInfo:mediaInfo
                                       sharingInfo:sharingInfo
                                    propertyGroups:propertyGroups
                          hasExplicitSharedMembers:hasExplicitSharedMembers];
}

@end
