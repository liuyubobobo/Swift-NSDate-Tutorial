//: Playground - noun: a place where people can play

import UIKit

//*********************************************************************
// Playing with Date in swift playground
// author: liuyubobobo
// This swift playground is based on swift 2.1.1 on Xcode 7.2
// The content of this playground contains:
//*********************************************************************
//** PART IV : Calculating Future and Past Dates
// - Makes use the NSCalendar class and NSCalendarUnit struct
// - Makes use the NSComponents
// - Using NSDate's dateByAddingTimeInterval method
//   This method may produce wrong results because of
//   leap seconds, leap years, daylight saving time, and so on
// - Substract a number of days from an NSDate
//*********************************************************************
// The contents are an implementation of http://appcoda.com 's tutorial
// - Refer: http://www.appcoda.com/nsdate/
//*********************************************************************


/***********************************************/
/* PART IV : Calculating Future and Past Dates */
/***********************************************/

/************************************************************/
/* Makes use the NSCalendar class and NSCalendarUnit struct */
/************************************************************/
var currentDate = NSDate()
var monthsToAdd = 2
let daysToAdd = 5

var calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Month, value: monthsToAdd, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))
// You can not add two calendar units at the same time, 
// so seperate it to execute two dateByAddingUnit methods
calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: daysToAdd, toDate: calculatedDate!, options: NSCalendarOptions.init(rawValue: 0))

/******************************/
/* Makes use the NSComponents */
/******************************/
let newDateComponents = NSDateComponents()
newDateComponents.month = monthsToAdd
newDateComponents.day = daysToAdd
calculatedDate = NSCalendar.currentCalendar().dateByAddingComponents(newDateComponents, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))

// About the NSCalandarOptions and more, please refer to
// https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSCalendar_Class/

/**************************************************/
/* Using NSDate's dateByAddingTimeInterval method */
/**************************************************/
// This method may produce wrong results because of 
// leap seconds, leap years, daylight saving time, and so on

let hoursToAddInSeconds: NSTimeInterval = 90*60
calculatedDate = currentDate.dateByAddingTimeInterval(hoursToAddInSeconds)

// The first two methods are more secure

/*********************************************/
/* Substract a number of days from an NSDate */
/*********************************************/
let numberOfDays = -365*10
calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: numberOfDays, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))


