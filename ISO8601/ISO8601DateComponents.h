//
//  ISO8601DateComponents.h
//  ISO8601
//
//  Created by Sergey Pimenov on 17/02/16.
//  Copyright © 2016 Sam Soffes. All rights reserved.
//

#if __has_feature(modules)
@import Foundation;
#else
#import <Foundation/Foundation.h>
#endif

@interface ISO8601DateComponents : NSDateComponents

@property NSInteger millisecond;

@end
