//: Playground - noun: a place where people can play

import UIKit

//*********************************************************************
// Playing with Date in swift playground
// author: liuyubobobo
// This swift playground is based on swift 2.1.1 on Xcode 7.2
// The content of this playground contains:
//*********************************************************************
//** PART V : Calculating Date Difference
// - Using the NSCalendar's components:fromDate:toDate:options: method
// - Using NSDateComponentsFormatter's stringFromTimeInterval method
// - Using NSDateComponentsFormatter's stringFromDate:toDate method
//*********************************************************************
// The contents are an implementation of http://appcoda.com 's tutorial
// - Refer: http://www.appcoda.com/nsdate/
//*********************************************************************


/****************************************/
/* PART V : Calculating Date Difference */
/****************************************/

var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyy-MM-dd HH:mm:ss"
var dateAsString = "2015-12-16 12:16:00"
var date1 = dateFormatter.dateFromString(dateAsString)
dateAsString = "2016-10-26 10:26:00"
var date2 = dateFormatter.dateFromString(dateAsString)

/*********************************************************************/
/* Using the NSCalendar's components:fromDate:toDate:options: method */
/*********************************************************************/
var diffDateComponents = NSCalendar.currentCalendar().components([NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second], fromDate: date1!, toDate: date2!, options: NSCalendarOptions.init(rawValue: 0))
diffDateComponents.year
diffDateComponents.month
diffDateComponents.day
diffDateComponents.hour
diffDateComponents.minute
diffDateComponents.second

// If the first date is earlier than the second date, then the value returns are negatives
diffDateComponents = NSCalendar.currentCalendar().components([NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second], fromDate: date2!, toDate: date1!, options: NSCalendarOptions.init(rawValue: 0))
diffDateComponents.year
diffDateComponents.month
diffDateComponents.day
diffDateComponents.hour
diffDateComponents.minute
diffDateComponents.second

/*******************************************************************/
/* Using NSDateComponentsFormatter's stringFromTimeInterval method */
/*******************************************************************/
let dateComponentsFormatter = NSDateComponentsFormatter()
dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full

let interval = date2!.timeIntervalSinceDate(date1!)
dateComponentsFormatter.stringFromTimeInterval(interval)

dateComponentsFormatter.unitsStyle = .Abbreviated
dateComponentsFormatter.stringFromTimeInterval(interval)

dateComponentsFormatter.unitsStyle = .Short
dateComponentsFormatter.stringFromTimeInterval(interval)

dateComponentsFormatter.unitsStyle = .Positional
dateComponentsFormatter.stringFromTimeInterval(interval)

dateComponentsFormatter.unitsStyle = .SpellOut
dateComponentsFormatter.stringFromTimeInterval(interval)

/***********************************************************/
/* Using NSDateComponentsFormatter's stringFromDate:toDate */
/***********************************************************/
// First of all, we must set allowedUnits properly
dateComponentsFormatter.allowedUnits = [NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Day]
dateComponentsFormatter.unitsStyle = .Full
let autoFormattedDifference = dateComponentsFormatter.stringFromDate(date1!, toDate: date2!)
