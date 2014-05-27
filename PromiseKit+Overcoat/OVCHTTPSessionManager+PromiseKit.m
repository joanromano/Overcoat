// OVCHTTPSessionManager+PromiseKit.m
//
// Copyright (c) 2014 Guillermo Gonzalez
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "OVCHTTPSessionManager+PromiseKit.h"

#import <PromiseKit/PromiseKit.h>

#if (defined(__IPHONE_OS_VERSION_MAX_ALLOWED) && __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000) || (defined(__MAC_OS_X_VERSION_MAX_ALLOWED) && __MAC_OS_X_VERSION_MAX_ALLOWED >= 1090)

@implementation OVCHTTPSessionManager (PromiseKit)

- (Promise *)GET:(NSString *)URLString parameters:(NSDictionary *)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self GET:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)HEAD:(NSString *)URLString parameters:(id)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self HEAD:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self POST:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)POST:(NSString *)URLString
       parameters:(NSDictionary *)parameters
constructingBodyWithBlock:(void (^)(id<AFMultipartFormData>))block
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self POST:URLString parameters:parameters constructingBodyWithBlock:block completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)PUT:(NSString *)URLString parameters:(NSDictionary *)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self PUT:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)PATCH:(NSString *)URLString parameters:(NSDictionary *)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self PATCH:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

- (Promise *)DELETE:(NSString *)URLString parameters:(NSDictionary *)parameters {
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter) {
        [self DELETE:URLString parameters:parameters completion:^(id response, NSError *error) {
            if (response) {
                fulfiller(response);
            } else if (error) {
                rejecter(error);
            } else {
                fulfiller(nil);
            }
        }];
    }];
}

@end

#endif