///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSHARINGLinkMetadata.h"
#import "DBSerializableProtocol.h"

@class DBSHARINGPathLinkMetadata;
@class DBSHARINGVisibility;

#pragma mark - API Object

///
/// The `PathLinkMetadata` struct.
///
/// Metadata for a path-based shared link.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGPathLinkMetadata : DBSHARINGLinkMetadata <DBSerializable>

#pragma mark - Instance fields

/// Path in user's Dropbox.
@property (nonatomic, readonly, copy) NSString * _Nonnull path;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param url URL of the shared link.
/// @param visibility Who can access the link.
/// @param path Path in user's Dropbox.
/// @param expires Expiration time, if set. By default the link won't expire.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url
                         visibility:(DBSHARINGVisibility * _Nonnull)visibility
                               path:(NSString * _Nonnull)path
                            expires:(NSDate * _Nullable)expires;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param url URL of the shared link.
/// @param visibility Who can access the link.
/// @param path Path in user's Dropbox.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url
                         visibility:(DBSHARINGVisibility * _Nonnull)visibility
                               path:(NSString * _Nonnull)path;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `PathLinkMetadata` struct.
///
@interface DBSHARINGPathLinkMetadataSerializer : NSObject

///
/// Serializes `DBSHARINGPathLinkMetadata` instances.
///
/// @param instance An instance of the `DBSHARINGPathLinkMetadata` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGPathLinkMetadata` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGPathLinkMetadata * _Nonnull)instance;

///
/// Deserializes `DBSHARINGPathLinkMetadata` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGPathLinkMetadata` API object.
///
/// @return An instantiation of the `DBSHARINGPathLinkMetadata` object.
///
+ (DBSHARINGPathLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
