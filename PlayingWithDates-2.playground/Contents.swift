//: Playground - noun: a place where people can play

import UIKit

//********************************************************************
// Playing with Date in swift playground
// author: liuyubobobo
// This swift playground is based on swift 2.1.1 on Xcode 7.2
// The content of this playground contains:
//********************************************************************
//** PART II : Using NSDateComponents
// - Create an NSCalendar object
// - Convert an NSDate object into an NSDateComponents object
//   using NSCalendar's components:fromDate method
// - Convert an NSDateComponents object back to an NSDate object
//   using NSCalendar's dateFromComponents: method
// - See results of one date from different time zones
//   set NSDataComponents' timezone property
//*********************************************************************
// The contents are an implementation of http://appcoda.com 's tutorial
// - Refer: http://www.appcoda.com/nsdate/
//*********************************************************************


/************************************/
/* PART II : Using NSDateComponents */
/************************************/

let currentDate = NSDate()

/*******************************/
/* Create an NSCalendar object */
/*******************************/
let calendar = NSCalendar.currentCalendar()

/************************************************************/
/* Convert an NSDate object into an NSDateComponents object */
/************************************************************/
let dateComponents = calendar.components(
                        [NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second],
                            fromDate: currentDate)
// To see all the available properties in NSCalendarUnit, please refer
// https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSCalendar_Class/#//apple_ref/swift/struct/c:@E@NSCalendarUnit
dateComponents.day
dateComponents.month
dateComponents.year
dateComponents.weekOfYear
dateComponents.hour
dateComponents.minute
dateComponents.second
dateComponents.nanosecond
// Because we don't set the NSCalendarUnit.timeZone, we can't access it
// unless we create dateComponents again by specify the timeZone unit
dateComponents.timeZone

/**************************************************************/
/* Convert an NSDateComponents object back to an NSDate object*/
/**************************************************************/
var newDate = NSDate()
let components = NSDateComponents()
components.day = 5
components.month = 01
components.year = 2016
components.hour = 19
components.minute = 30
newDate = calendar.dateFromComponents(components)!

/****************************************************/
/* See results of one date from different timezones */
/****************************************************/
// GMT - Greenwich Mean Time
components.timeZone = NSTimeZone(abbreviation: "GMT")
newDate = calendar.dateFromComponents(components)!

// CST - China Standard Time
components.timeZone = NSTimeZone(abbreviation: "CST")
newDate = calendar.dateFromComponents(components)!

// CET - Central European Time
components.timeZone = NSTimeZone(abbreviation: "CET")
newDate = calendar.dateFromComponents(components)!

// See the list of abbreviation of timezones: 
// http://www.timeanddate.com/time/zones/
