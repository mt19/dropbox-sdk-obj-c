///
/// Auto-generated by Stone, do not modify.
///

#import "DBXAUTHRouteObjects.h"
#import "DBXAUTHRoutes.h"
#import "DBXStoneBase.h"

@implementation DBXAUTHRouteObjects 

static DBXRoute *DBXAUTHTokenRevoke;

+ (DBXRoute *)DBXAUTHTokenRevoke {
    if (!DBXAUTHTokenRevoke) {
        DBXAUTHTokenRevoke = [[DBXRoute alloc] init:
            @"token/revoke"
            namespace_:@"auth"
            deprecated:@NO
            resultType:nil
            errorType:nil
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXAUTHTokenRevoke;
}

@end