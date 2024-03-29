//
//  FADUser.m
//  LYFactModDB
//
//  Created by Luo Yu on 10/3/2023.
//  Email: indie.luo@gmail.com
//
//  The MIT License (MIT)
//
//  Copyright (c) 2023 骆昱(Luo Yu). All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "FADUser.h"
#import "LYFactModDB.h"
#import <FCUUID/FCUUID.h>


@implementation FADUser

@end


// MARK: - CATEGORY FAD
@implementation FADUser (FAD)

+ (instancetype)userByID:(NSString *)queryUserID {
    
    RLMResults *rets = [[self class] objectsWhere:@"userID == %@", queryUserID];
    
    if (rets != nil && [rets count] > 0) {
        return rets.firstObject;
    }
    
    return nil;
}

- (NSInteger)currentAge {
    
    if (self.birthday == nil) {
        return 0;
    }
    
    NSDate *bdate = [NSDate dateWithTimeIntervalSince1970:[self.birthday doubleValue]];
    return [bdate getCurrentAgeForBirthdayDate];
}

- (void)generateUserIDIfNeeded {
    if (_userID == nil || [_userID isEmpty]) {
        _userID = [NSString stringWithFormat:@"%@-%@-%@",
                   [[[FCUUID uuid] stringByReplacingOccurrencesOfString:@"-" withString:@""] substringToIndex:10],
                   [[NSDate date] stringWithFormat:@"yyyyMMddHHmmss" andTimezone:TZShanghai],
                   @([NSNumber randomIntegerBetween:1000 and:9999])
        ];
    }
}

@end
