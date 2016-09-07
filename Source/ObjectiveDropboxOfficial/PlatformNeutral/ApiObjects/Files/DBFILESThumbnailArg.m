///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESThumbnailArg.h"
#import "DBFILESThumbnailFormat.h"
#import "DBFILESThumbnailSize.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESThumbnailArg

#pragma mark - Constructors

- (instancetype)initWithPath:(NSString *)path
                      format:(DBFILESThumbnailFormat *)format
                        size:(DBFILESThumbnailSize *)size {
  [DBStoneValidators stringValidator:nil maxLength:nil
                             pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

  self = [super init];
  if (self) {
    _path = path;
    _format = format ?: [[DBFILESThumbnailFormat alloc] initWithJpeg];
    _size = size ?: [[DBFILESThumbnailSize alloc] initWithW64h64];
  }
  return self;
}

- (instancetype)initWithPath:(NSString *)path {
  return [self initWithPath:path format:nil size:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESThumbnailArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESThumbnailArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESThumbnailArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESThumbnailArgSerializer

+ (NSDictionary *)serialize:(DBFILESThumbnailArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"path"] = valueObj.path;
  jsonDict[@"format"] = [DBFILESThumbnailFormatSerializer serialize:valueObj.format];
  jsonDict[@"size"] = [DBFILESThumbnailSizeSerializer serialize:valueObj.size];

  return jsonDict;
}

+ (DBFILESThumbnailArg *)deserialize:(NSDictionary *)valueDict {
  NSString *path = valueDict[@"path"];
  DBFILESThumbnailFormat *format = [DBFILESThumbnailFormatSerializer deserialize:valueDict[@"format"]];
  DBFILESThumbnailSize *size = [DBFILESThumbnailSizeSerializer deserialize:valueDict[@"size"]];

  return [[DBFILESThumbnailArg alloc] initWithPath:path format:format size:size];
}

@end