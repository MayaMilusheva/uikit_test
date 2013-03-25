//
//  uikit_testTests.m
//  uikit_testTests
//
//  Created by Maya Milusheva on 3/20/13.
//  Copyright (c) 2013 Maya Milusheva. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(Truth)

describe(@"Truth", ^{
    context(@"Always", ^{
        it(@"is true", ^{
            [[theValue(2+2) should] equal:theValue(4)];
        });
    });
});

SPEC_END
