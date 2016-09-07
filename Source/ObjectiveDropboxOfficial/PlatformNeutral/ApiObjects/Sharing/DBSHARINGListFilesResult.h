///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
@protocol DBSerializable;

@class DBSHARINGSharedFileMetadata;

#pragma mark - API Object

///
/// The `ListFilesResult` struct.
///
/// Success results for `listReceivedFiles`.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBSHARINGListFilesResult : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Information about the files shared with current user.
@property(nonatomic, readonly) NSArray<DBSHARINGSharedFileMetadata *> * _Nonnull entries;

/// Cursor used to obtain additional shared files.
@property(nonatomic, readonly) NSString * _Nullable cursor;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param entries Information about the files shared with current user.
/// @param cursor Cursor used to obtain additional shared files.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithEntries:(NSArray<DBSHARINGSharedFileMetadata *> * _Nonnull)entries
                                 cursor:(NSString * _Nullable)cursor;

///
/// Convenience constructor (exposes only non-nullable instance variables with no default value).
///
/// @param entries Information about the files shared with current user.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithEntries:(NSArray<DBSHARINGSharedFileMetadata *> * _Nonnull)entries;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `ListFilesResult` struct.
///
@interface DBSHARINGListFilesResultSerializer : NSObject

///
/// Serializes `DBSHARINGListFilesResult` instances.
///
/// @param instance An instance of the `DBSHARINGListFilesResult` API object.
///
/// @return A json-compatible dictionary representation of the `DBSHARINGListFilesResult` API
/// object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGListFilesResult * _Nonnull)instance;

///
/// Deserializes `DBSHARINGListFilesResult` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBSHARINGListFilesResult` API
/// object.
///
/// @return An instantiation of the `DBSHARINGListFilesResult` object.
///
+ (DBSHARINGListFilesResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end