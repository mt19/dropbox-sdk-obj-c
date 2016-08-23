///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingListFileMembersError;
@class DbxSharingSharingFileAccessError;
@class DbxSharingSharingUserError;

/// 
/// The DbxSharingListFileMembersError union.
/// 
/// Error for listFileMembers.
/// 
@interface DbxSharingListFileMembersError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingListFileMembersErrorTag) {
    /// (no description)
    SharingListFileMembersErrorUserError,
    /// (no description)
    SharingListFileMembersErrorAccessError,
    /// (no description)
    SharingListFileMembersErrorOther,
};

- (nonnull instancetype)initWithUserError:(DbxSharingSharingUserError * _Nonnull)userError;

- (nonnull instancetype)initWithAccessError:(DbxSharingSharingFileAccessError * _Nonnull)accessError;

- (nonnull instancetype)initWithOther;

- (BOOL)isUserError;

- (BOOL)isAccessError;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingListFileMembersError union type.
@property (nonatomic) SharingListFileMembersErrorTag tag;
@property (nonatomic) DbxSharingSharingUserError * _Nonnull userError;
@property (nonatomic) DbxSharingSharingFileAccessError * _Nonnull accessError;

@end


@interface DbxSharingListFileMembersErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFileMembersError * _Nonnull)obj;

+ (DbxSharingListFileMembersError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end