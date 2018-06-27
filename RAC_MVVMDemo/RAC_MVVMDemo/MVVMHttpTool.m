//
//  MVVMHttpTool.m
//  RAC_MVVMDemo
//
//  Created by 靓萌服饰靓萌服饰 on 2018/6/27.
//  Copyright © 2018年 靓萌服饰靓萌服饰. All rights reserved.
//

#import "MVVMHttpTool.h"
#import <AFNetworking/AFNetworking.h>
@implementation MVVMHttpTool
+(instancetype)shareAFmanger{
    static MVVMHttpTool*afman;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (afman == nil) {
            afman = [[[self class] alloc] init];
        }
    });
    return afman;
}
+(AFHTTPSessionManager *)shareManager;
{
    static AFHTTPSessionManager * manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager =[AFHTTPSessionManager manager];
        //manager.responseSerializer.acceptableContentTypes =[NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html",@"text/plain",nil];
        //[manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        manager.requestSerializer.timeoutInterval = 30.f;
        manager.responseSerializer=[AFHTTPResponseSerializer serializer];
        //[manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
        
        
    });
    return manager;
}
+(void)getWithURLString:(NSString *)URLString parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    AFHTTPSessionManager *manger=[AFHTTPSessionManager manager];
    manger.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manger GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if(success){
            success(responseObject);
            
        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if(failure){
            failure(error);
            
        }
    }];
    
}


+(void)postWithURLString:(NSString *)URLString parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    AFHTTPSessionManager *manger=[MVVMHttpTool shareManager];
    //manger.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manger POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
    //    AFManger *mange=[AFManger shareAFmanger];
    //    [mange postWithURLString:URLString parameters:parameters success:^(id responseObject) {
    //        if (success) {
    //                success(responseObject);
    //               }
    //    } failure:^(NSError *error) {
    //        if (failure) {
    //            failure(error);
    //        }
    //    }];
    
    
}
@end
