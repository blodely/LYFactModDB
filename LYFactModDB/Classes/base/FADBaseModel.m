//
//  FADBaseModel.m
//  LYFactModDB
//
//  Created by Luo Yu on 14/3/2023.
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

#import "FADBaseModel.h"
#import <Realm/Realm.h>


@implementation FADBaseModel
@end

@implementation FADBaseModel (FAD)

+ (instancetype)byID:(NSString *)queryUID {
    RLMResults *results = [[self class] objectsWhere:@"uniqueID == %@", queryUID];
    if (results != nil && results.count > 0) {
        return results.firstObject;
    }
    return nil;
}

@end
