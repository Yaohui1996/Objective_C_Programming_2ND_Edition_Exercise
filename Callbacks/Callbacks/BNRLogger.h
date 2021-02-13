//
//  BNRLogger.h
//  Callbacks
//
//  Created by YaohuiLi on 2021/1/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//这里明确说明了BNRLogger类继承自NSObject类，且遵循NSURLConnectionDelegate和NSURLConnectionDataDelegate协议
@interface BNRLogger : NSObject<NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData* _incomingData;
}

@property (nonatomic) NSDate* lastTime;

- (NSString*) lastTimeString;
- (void) updateLastTime:(NSTimer*)t;

@end

NS_ASSUME_NONNULL_END
