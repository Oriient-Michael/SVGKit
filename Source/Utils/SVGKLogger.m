//
//  SVGKLogger.m
//  SVGKit-iOS
//
//  Created by Michael Krutoyarskiy on 20/01/2025.
//  Copyright © 2025 na. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVGKLogger.h"

// TODO: - Handle log level
void SVGKitLogSetLogLevel(NSInteger level) {

}

void SVGKitLogError(NSString *format, ...) {
    NSLog(@"%@", format);
}

void SVGKitLogWarn(NSString *format, ...) {
    NSLog(@"%@", format);
}

void SVGKitLogInfo(NSString *format, ...) {
    NSLog(@"%@", format);
}

void SVGKitLogDebug(NSString *format, ...) {
    NSLog(@"%@", format);
}

void SVGKitLogVerbose(NSString *format, ...) {
    NSLog(@"%@", format);
}

