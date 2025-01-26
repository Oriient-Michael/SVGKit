//
//  SVGKLogger.m
//  SVGKit-iOS
//
//  Created by Michael Krutoyarskiy on 20/01/2025.
//  Copyright © 2025 na. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVGKLogger.h"

static BOOL isLoggerEnabled = NO;

void setSvgLoggerEnabled(BOOL enabled) {
    isLoggerEnabled = enabled;
}

BOOL isSvgLoggerEnabled(void) {
    return isLoggerEnabled;
}

void SVGKitLogError(NSString *format, ...) {
    if (!isLoggerEnabled) return;
    va_list args;
    va_start(args, format);
    NSLogv([NSString stringWithFormat:@"❌ ERROR: %@", format], args);
    va_end(args);
}

void SVGKitLogWarn(NSString *format, ...) {
    if (!isLoggerEnabled) return;
    va_list args;
    va_start(args, format);
    NSLogv([NSString stringWithFormat:@"⚠️ [WARNING]: %@", format], args);
    va_end(args);
}

void SVGKitLogInfo(NSString *format, ...) {
    if (!isLoggerEnabled) return;
    va_list args;
    va_start(args, format);
    NSLogv([NSString stringWithFormat:@"ℹ️ [INFO]: %@", format], args);
    va_end(args);
}

void SVGKitLogDebug(NSString *format, ...) {
    if (!isLoggerEnabled) return;
    va_list args;
    va_start(args, format);
    NSLogv([NSString stringWithFormat:@"🐞 [DEBUG]: %@", format], args);
    va_end(args);
}

void SVGKitLogVerbose(NSString *format, ...) {
    if (!isLoggerEnabled) return;
    va_list args;
    va_start(args, format);
    NSLogv([NSString stringWithFormat:@"📢 [VERBOSE]: %@", format], args);
    va_end(args);
}

