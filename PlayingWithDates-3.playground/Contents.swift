//: Playground - noun: a place where people can play

import UIKit

//*********************************************************************
// Playing with Date in swift playground
// author: liuyubobobo
// This swift playground is based on swift 2.1.1 on Xcode 7.2
// The content of this playground contains:
//*********************************************************************
//** PART III : Comparing Date and Time
// - Compare two dates by NSDate earlierDate: and laterDate: methods
// - Compare two dates by compare: function and NSComparisonResult enum
// - Compare two dates by using time intervals
// - Use isEqualToDate: to see if two NSDates' objects are equal
//*********************************************************************
// The contents are an implementation of http://appcoda.com 's tutorial
// - Refer: http://www.appcoda.com/nsdate/
//*********************************************************************


/**************************************/
/* PART III : Comparing Date and Time */
/**************************************/

var dateFormatter = NSDateFormatter()

// Create two custom date objects
dateFormatter.dateFormat = "MMM dd, yyyy zzz"
var dateAsString = "Oct 08, 2015 GMT"
var date1 = dateFormatter.dateFromString(dateAsString)
dateAsString = "Oct 10, 2015 GMT"
var date2 = dateFormatter.dateFromString(dateAsString)

/*******************************************************************/
/* Compare two dates by NSDate earlierDate: and laterDate: methods */
/*******************************************************************/

// For date1.earlierDate(date2)
// - If the date1 object is earlier than date2, then the above method will return the value of the date1.
// - If the date2 object is earlier than date1, then the value of the date2 will be returned.
// - If the dates are equal, then the date1 is returned again.
// All the above apply for the laterDate: as well.
date1!.earlierDate(date2!)
date1!.laterDate(date2!)

/**********************************************************************/
/* Compare two dates by compare: function and NSComparisonResult enum */
/**********************************************************************/
if date1!.compare(date2!) == NSComparisonResult.OrderedDescending{
    print("date1 is later than date2")
}
else if date1!.compare(date2!) == NSComparisonResult.OrderedAscending{
    print("date1 is earlier than date2")
}
else if date1!.compare(date2!) == NSComparisonResult.OrderedSame{
    print("date1 and date2 are the same")
}

/*********************************************/
/* Compare two dates by using time intervals */
/*********************************************/
if date1!.timeIntervalSinceReferenceDate > date2!.timeIntervalSinceReferenceDate{
    print("date1 is later than date2")
}
else if date1!.timeIntervalSinceReferenceDate < date2!.timeIntervalSinceReferenceDate{
    print("date1 is earlier than date2")
}
else{
    print("date1 and date2 are the same")
}

/**************************************************************/
/* Use isEqualToDate: to see if two NSDates' objects are equal*/
/**************************************************************/
dateFormatter.dateFormat = "yyyy MMM dd, HH:mm:ss"
dateAsString = "2015 Dec 16, 12:00:00"
date1 = dateFormatter.dateFromString(dateAsString)
dateAsString = "2015 Dec 16, 12:00:00"
date2 = dateFormatter.dateFromString(dateAsString)

date1!.isEqualToDate(date2!)
