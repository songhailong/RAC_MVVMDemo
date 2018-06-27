//
//  MVVMHttpTool.h
//  RAC_MVVMDemo
//
//  Created by 靓萌服饰靓萌服饰 on 2018/6/27.
//  Copyright © 2018年 靓萌服饰靓萌服饰. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface MVVMHttpTool : NSObject
+ (void)postWithURLString:(NSString *)URLString
               parameters:(id)parameters
                  success:(void (^)(id responseObject))success
                  failure:(void (^)(NSError *error))failure;
+ (void)getWithURLString:(NSString *)URLString
              parameters:(id)parameters
                 success:(void (^)(id responseObject))success
                 failure:(void (^)(NSError *error))failure;
@end
