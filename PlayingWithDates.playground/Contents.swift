//: Playground - noun: a place where people can play

import UIKit

//******************************************************************************
// Playing with Date in swift playground
// author: liuyubobobo
// This swift playground is based on swift 2.1.1 on Xcode 7.2
// The content of this playground contains:
//******************************************************************************
//** PART I : Using NSDate and NSDateFormatter
// - Create a NSDate instance
// - Create a NSDateFormatter instance
// - Using dateStyle property for NSDateFormatter to show predefined date format
// - Give an NSLocale instance to locale property of NSDateFormatter 
//   to show locale-related date format.
//   - I use China locale in this sample because I'm a Chinese:)
// - Given an date specifier string to dateFormat property of NSDateFormatter
//   to show custom date format
// - Using NSDateFormatter's dateFromString method 
//   to convert a date string to an NSDate instance
//******************************************************************************
//** PART II : Using NSDateComponents
// - Create an NSCalendar instance
// - Convert an NSDate object into an NSComponents object 
//   using NSCalendar's components method
// - Convert an NSDateComponents back to an NSDate
//   using NSCalendar's dateFromComponents method
//******************************************************************************


/*********************************************/
/* PART I : Using NSDate and NSDateFormatter */
/*********************************************/

/********************/
/* Get current date */
/********************/
let currentDate = NSDate()

/************************/
/* Init a dateFormatter */
/************************/
let dateFormatter = NSDateFormatter()

/**********************************************/
/* Test different date style of dateFormatter */
/**********************************************/
// Full Style
dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
var convertedDate = dateFormatter.stringFromDate(currentDate)

// Long Style
dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

// Medium Style
dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

// Short Style
dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

/*****************************************/
/* Test locale property of dateFormatter */
/*****************************************/
// Set the locale for data formatter
let cnLocale = NSLocale(localeIdentifier: "zh_CN")
dateFormatter.locale = cnLocale

// Test different date style of dateFormatter on China locale
dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
// Pay attention that the order of year, month and day changed 
//   compared with US locale
convertedDate = dateFormatter.stringFromDate(currentDate)

// go back to US locale
dateFormatter.locale = NSLocale.currentLocale()

/**********************************************/
/* Using specifier to show custom date format */
/**********************************************/

// EEEE: The full name of the day (e.g. Monday). Use 1-3 letters for the abbreviated representation of the day name.
// MMMM: The full name of the month (e.g. October). Use 1-3 letters for the abbreviated representation of the month name.
// dd: The day number in the month (e.g. 09 or 15).
// yyyy: The year with four digits (e.g. 2015)
// HH: The hour representation with two digits (e.g. 08 or 19).
// mm: The minutes representation with two digits (e.g. 05 or 54).
// ss: The seconds representation with two digits.
// zzz: The timezone presented with three letters (e.g. GMT)
// GGG: BC or AD.
// The full reference on the date format specifier:
// http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns

dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy"
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateFormat = "HH:mm:ss"
convertedDate = dateFormatter.stringFromDate(currentDate)

/***********************************************/
/* Convert a date string to an NSDate instance */
/***********************************************/
var dateAsString = "24-12-2015 23:59"
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
var newDate = dateFormatter.dateFromString(dateAsString)

dateAsString = "Thu, 08 Oct 2015 09:22:33 GMT"
dateFormatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss zzz"
// Note the 09:22:33 get changed by using the timezone string
newDate = dateFormatter.dateFromString(dateAsString)


/************************************/
/* PART II : Using NSDateComponents */
/************************************/

/*********************************/
/* Create an NSCalendar instance */
/*********************************/
let calendar = NSCalendar.currentCalendar()

/********************************************************/
/* Convert an NSDate object into an NSComponents object */
/********************************************************/
let dateComponents = calendar.components(
                        [NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second],
                            fromDate: currentDate)
// To see all the available properties in NSCalendarUnit
// https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSCalendar_Class/#//apple_ref/swift/struct/c:@E@NSCalendarUnit
dateComponents.day
dateComponents.month
dateComponents.year
dateComponents.weekOfYear
dateComponents.hour
dateComponents.minute
dateComponents.second
dateComponents.nanosecond
// Because we don't set the NSCalendarUnit.TimeZone, we can't access it
// unless we create dateComponents again by specify the TimeZone unit
dateComponents.timeZone

/*************************************************/
/* Convert an NSDateComponents back to an NSDate */
/*************************************************/
let components = NSDateComponents()
components.day = 5
components.month = 01
components.year = 2016
components.hour = 19
components.minute = 30
newDate = calendar.dateFromComponents(components)



