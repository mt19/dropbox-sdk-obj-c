///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListTeamAppsArg.h"

#pragma mark - API Object

@implementation DBTEAMListTeamAppsArg

#pragma mark - Constructors

- (instancetype)initWithCursor:(NSString *)cursor {

  self = [super init];
  if (self) {
    _cursor = cursor;
  }
  return self;
}

- (instancetype)init {
  return [self initWithCursor:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMListTeamAppsArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMListTeamAppsArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMListTeamAppsArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMListTeamAppsArgSerializer

+ (NSDictionary *)serialize:(DBTEAMListTeamAppsArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if (valueObj.cursor) {
    jsonDict[@"cursor"] = valueObj.cursor;
  }

  return jsonDict;
}

+ (DBTEAMListTeamAppsArg *)deserialize:(NSDictionary *)valueDict {
  NSString *cursor = valueDict[@"cursor"] ?: nil;

  return [[DBTEAMListTeamAppsArg alloc] initWithCursor:cursor];
}

@end
