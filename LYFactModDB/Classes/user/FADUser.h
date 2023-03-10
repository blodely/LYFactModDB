//
//  FADUser.h
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

#import <Realm/Realm.h>


@interface FADUser : RLMObject

/// Primary key (should be), user ID
@property NSString *userID;

/// user name
@property NSString *name;

/// nickname
@property NSString *nickname;

/// avatar
@property NSString *avatar;

/// birthday
@property NSString *birthday;

/// height
@property NSInteger height;

/// weight
@property NSInteger weight;

/// record creation datetime
@property NSString *dateCreated;

/// remark
@property NSString *remark;

@end

// MARK: - CATEGORY FAD
@interface FADUser (FAD)

/// Get user instance by UserID
/// - Parameter queryUserID: the userid
- (instancetype)userByID:(NSString *)queryUserID;

/// Get user current age number
- (NSInteger)currentAge;

/// generate userID
- (void)generateUserIDIfNeeded;

@end
