//
//  SVGKLogger.h
//  SVGKit-iOS
//
//  Created by Michael Krutoyarskiy on 20/01/2025.
//  Copyright © 2025 na. All rights reserved.
//

#ifndef SVGKLogger_h
#define SVGKLogger_h

void SVGKitLogSetLogLevel(NSInteger level);
void SVGKitLogError(NSString *format, ...);
void SVGKitLogWarn(NSString *format, ...);
void SVGKitLogInfo(NSString *format, ...);
void SVGKitLogDebug(NSString *format, ...);
void SVGKitLogVerbose(NSString *format, ...);

#endif /* Header_h */
