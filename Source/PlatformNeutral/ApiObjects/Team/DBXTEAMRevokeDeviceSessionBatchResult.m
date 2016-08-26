///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMRevokeDeviceSessionBatchResult.h"
#import "DBXTEAMRevokeDeviceSessionStatus.h"

@implementation DBXTEAMRevokeDeviceSessionBatchResult 

- (instancetype)initWithRevokeDevicesStatus:(NSArray<DBXTEAMRevokeDeviceSessionStatus *> *)revokeDevicesStatus {
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](revokeDevicesStatus);

    self = [super init];
    if (self != nil) {
        _revokeDevicesStatus = revokeDevicesStatus;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMRevokeDeviceSessionBatchResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMRevokeDeviceSessionBatchResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMRevokeDeviceSessionBatchResultSerializer serialize:self] description];
}

@end


@implementation DBXTEAMRevokeDeviceSessionBatchResultSerializer 

+ (NSDictionary *)serialize:(DBXTEAMRevokeDeviceSessionBatchResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"revoke_devices_status"] = [DBXArraySerializer serialize:valueObj.revokeDevicesStatus withBlock:^id(id elem) { return [DBXTEAMRevokeDeviceSessionStatusSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DBXTEAMRevokeDeviceSessionBatchResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DBXTEAMRevokeDeviceSessionStatus *> *revokeDevicesStatus = [DBXArraySerializer deserialize:valueDict[@"revoke_devices_status"] withBlock:^id(id elem) { return [DBXTEAMRevokeDeviceSessionStatusSerializer deserialize:elem]; }];

    return [[DBXTEAMRevokeDeviceSessionBatchResult alloc] initWithRevokeDevicesStatus:revokeDevicesStatus];
}

@end