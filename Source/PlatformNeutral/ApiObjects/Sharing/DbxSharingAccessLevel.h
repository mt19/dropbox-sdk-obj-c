///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingAccessLevel;

/// 
/// The DbxSharingAccessLevel union.
/// 
/// Defines the access levels for collaborators.
/// 
@interface DbxSharingAccessLevel : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingAccessLevelTag) {
    /// The collaborator is the owner of the shared folder. Owners can view and
    /// edit the shared folder as well as set the folder's policies using
    /// updateFolderPolicy.
    SharingAccessLevelOwner,
    /// The collaborator can both view and edit the shared folder.
    SharingAccessLevelEditor,
    /// The collaborator can only view the shared folder.
    SharingAccessLevelViewer,
    /// The collaborator can only view the shared folder and does not have any
    /// access to comments.
    SharingAccessLevelViewerNoComment,
    /// (no description)
    SharingAccessLevelOther,
};

- (nonnull instancetype)initWithOwner;

- (nonnull instancetype)initWithEditor;

- (nonnull instancetype)initWithViewer;

- (nonnull instancetype)initWithViewerNoComment;

- (nonnull instancetype)initWithOther;

- (BOOL)isOwner;

- (BOOL)isEditor;

- (BOOL)isViewer;

- (BOOL)isViewerNoComment;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingAccessLevel union type.
@property (nonatomic) SharingAccessLevelTag tag;

@end


@interface DbxSharingAccessLevelSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingAccessLevel * _Nonnull)obj;

+ (DbxSharingAccessLevel * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end