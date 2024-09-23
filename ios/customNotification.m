//
//  customNotification.m
//  notification2
//
//  Created by Abdulloh Olimov on 21/09/24.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>

@interface RCT_EXTERN_MODULE(customNotification, NSObject)

RCT_EXTERN_METHOD(MyNotification:(NSString *)param)
@end
