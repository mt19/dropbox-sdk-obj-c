///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `WriteMode` union.
///
/// Your intent when writing a file to some path. This is used to determine what constitutes a
/// conflict and what the autorename strategy is. In some situations, the conflict behavior is
/// identical: (a) If the target path doesn't contain anything, the file is always written; no
/// conflict. (b) If the target path contains a folder, it's always a conflict. (c) If the target
/// path contains a file with identical contents, nothing gets written; no conflict. The conflict
/// checking differs in the case where there's a file at the target path with contents different
/// from the contents you're trying to write.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBFILESWriteMode : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBFILESWriteModeTag` enum type represents the possible tag states with which the
/// `DBFILESWriteMode` union can exist.
typedef NS_ENUM(NSInteger, DBFILESWriteModeTag) {
  /// Never overwrite the existing file. The autorename strategy is to append a number to the file
  /// name. For example, "document.txt" might become "document (2).txt".
  DBFILESWriteModeAdd,

  /// Always overwrite the existing file. The autorename strategy is the same as it is for add.
  DBFILESWriteModeOverwrite,

  /// Overwrite if the given "rev" matches the existing file's "rev". The autorename strategy is
  /// to append the string "conflicted copy" to the file name. For example, "document.txt" might
  /// become "document (conflicted copy).txt" or "document (Panda's conflicted copy).txt".
  DBFILESWriteModeUpdate,

};

/// Represents the union's current tag state.
@property(nonatomic, readonly) DBFILESWriteModeTag tag;

/// Overwrite if the given "rev" matches the existing file's "rev". The autorename strategy is to
/// append the string "conflicted copy" to the file name. For example, "document.txt" might become
/// "document (conflicted copy).txt" or "document (Panda's conflicted copy).txt". @note Ensure the
/// `isUpdate` method returns true before accessing, otherwise a runtime exception will be raised.
@property(nonatomic, readonly, copy) NSString * _Nonnull update;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "add".
///
/// Description of the "add" tag state: Never overwrite the existing file. The autorename strategy
/// is to append a number to the file name. For example, "document.txt" might become "document
/// (2).txt".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAdd;

///
/// Initializes union class with tag state of "overwrite".
///
/// Description of the "overwrite" tag state: Always overwrite the existing file. The autorename
/// strategy is the same as it is for add.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOverwrite;

///
/// Initializes union class with tag state of "update".
///
/// Description of the "update" tag state: Overwrite if the given "rev" matches the existing file's
/// "rev". The autorename strategy is to append the string "conflicted copy" to the file name. For
/// example, "document.txt" might become "document (conflicted copy).txt" or "document (Panda's
/// conflicted copy).txt".
///
/// @param update Overwrite if the given "rev" matches the existing file's "rev". The autorename
/// strategy is to append the string "conflicted copy" to the file name. For example, "document.txt"
/// might become "document (conflicted copy).txt" or "document (Panda's conflicted copy).txt".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUpdate:(NSString * _Nonnull)update;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "add".
///
/// @return Whether the union's current tag state has value "add".
///
- (BOOL)isAdd;

///
/// Retrieves whether the union's current tag state has value "overwrite".
///
/// @return Whether the union's current tag state has value "overwrite".
///
- (BOOL)isOverwrite;

///
/// Retrieves whether the union's current tag state has value "update".
///
/// @note Call this method and ensure it returns true before accessing the `update` property,
/// otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "update".
///
- (BOOL)isUpdate;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBFILESWriteMode` union.
///
@interface DBFILESWriteModeSerializer : NSObject

///
/// Serializes `DBFILESWriteMode` instances.
///
/// @param instance An instance of the `DBFILESWriteMode` API object.
///
/// @return A json-compatible dictionary representation of the `DBFILESWriteMode` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESWriteMode * _Nonnull)instance;

///
/// Deserializes `DBFILESWriteMode` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBFILESWriteMode` API object.
///
/// @return An instantiation of the `DBFILESWriteMode` object.
///
+ (DBFILESWriteMode * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end