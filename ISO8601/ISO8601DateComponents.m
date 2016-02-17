//
//  ISO8601DateComponents.m
//  ISO8601
//
//  Created by Sergey Pimenov on 17/02/16.
//  Copyright © 2016 Sam Soffes. All rights reserved.
//

#import "ISO8601DateComponents.h"

@implementation ISO8601DateComponents

@synthesize millisecond;

- (BOOL)isEqual:(id)object {
	if ([object isKindOfClass:[ISO8601DateComponents class]]) {
		ISO8601DateComponents *anotherObject = (ISO8601DateComponents *)object;
		return [super isEqual:object] && anotherObject.millisecond == self.millisecond;
	}

	return NO;
}

#pragma mark -- NSObject

- (NSString *)description {
	NSString *description = [super description];
	return [NSString stringWithFormat:@"%@ \n    Millisecond: %@", description, [NSNumber numberWithInteger:self.millisecond]];
}

- (NSString *)debugDescription {
	NSString *description = [super debugDescription];
	return [NSString stringWithFormat:@"%@ \n    Millisecond: %@", description, [NSNumber numberWithInteger:self.millisecond]];
}

@end
