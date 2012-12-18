//
//  OWUtilities.m
//  OpenWatch
//
//  Created by Christopher Ballinger on 11/29/12.
//  Copyright (c) 2012 OpenWatch FPC. All rights reserved.
//

#import "OWUtilities.h"

@implementation OWUtilities

+ (UIColor*) fabricBackgroundPattern {
    return [UIColor colorWithPatternImage:[UIImage imageNamed:@"fabric.jpeg"]];
}

+ (UIColor*) navigationBarColor {
    return [UIColor colorWithRed:1.0f green:0.0f blue:0.0f alpha:1.0f];
}

+ (UIColor*) doneButtonColor {
    return [UIColor colorWithRed:0.0f green:0.8f blue:0.0f alpha:1.0f];
}

+ (NSDateFormatter*) utcDateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd' 'HH:mm:ss";
    dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    return dateFormatter;
}

+ (void) styleLabel:(UILabel*) label {
    label.textColor = [UIColor darkTextColor];
    label.shadowColor = [UIColor lightGrayColor];
    label.shadowOffset = CGSizeMake(0, 1);
    label.backgroundColor = [UIColor clearColor];
}

+ (NSDateFormatter*) localDateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd' 'h:mm a";
    dateFormatter.timeZone = [NSTimeZone localTimeZone];
    dateFormatter.locale = [NSLocale currentLocale];
    return dateFormatter;
}

+ (UIColor*) greyTextColor {
    return [OWUtilities greyColorWithGreyness:0.3];
}

+ (UIColor*) greyColorWithGreyness:(CGFloat)greyness {
    return [UIColor colorWithRed:greyness green:greyness blue:greyness alpha:1.0f];
}

+ (NSString*) apiBaseURLString {
    //return @"http://alpha.openwatch.net/";
    return @"http://192.168.1.44:8000/";
}

+ (NSString*) captureBaseURLString {
    //return @"http://capture.openwatch.net/";
    return @"http://192.168.1.44:5000/";
}

+ (CGFloat) bottomOfView:(UIView *)view {
    return view.frame.origin.y + view.frame.size.height;
}

+ (CGFloat) rightOfView:(UIView *)view {
    return view.frame.origin.x + view.frame.size.width;
}

/**
 Thanks to Paul Solt for supplying these background images and container view properties
 */
+ (WEPopoverContainerViewProperties *)improvedContainerViewProperties {
	
	WEPopoverContainerViewProperties *props = [[WEPopoverContainerViewProperties alloc] init];
	NSString *bgImageName = nil;
	CGFloat bgMargin = 0.0;
	CGFloat bgCapSize = 0.0;
	CGFloat contentMargin = 4.0;
	
	bgImageName = @"popoverBg.png";
	
	// These constants are determined by the popoverBg.png image file and are image dependent
	bgMargin = 13; // margin width of 13 pixels on all sides popoverBg.png (62 pixels wide - 36 pixel background) / 2 == 26 / 2 == 13
	bgCapSize = 31; // ImageSize/2  == 62 / 2 == 31 pixels
	
	props.leftBgMargin = bgMargin;
	props.rightBgMargin = bgMargin;
	props.topBgMargin = bgMargin;
	props.bottomBgMargin = bgMargin;
	props.leftBgCapSize = bgCapSize;
	props.topBgCapSize = bgCapSize;
	props.bgImageName = bgImageName;
	props.leftContentMargin = contentMargin;
	props.rightContentMargin = contentMargin - 1; // Need to shift one pixel for border to look correct
	props.topContentMargin = contentMargin;
	props.bottomContentMargin = contentMargin;
	
	props.arrowMargin = 4.0;
	
	props.upArrowImageName = @"popoverArrowUp.png";
	props.downArrowImageName = @"popoverArrowDown.png";
	props.leftArrowImageName = @"popoverArrowLeft.png";
	props.rightArrowImageName = @"popoverArrowRight.png";
	return props;
}

@end
