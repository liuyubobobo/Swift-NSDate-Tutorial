#Playing with Swift Date

This 
project is aimed to show the basic use of Swift Date class. The contents are an implementation of [AppCoda](http://appcoda.com)'s tutorial. See <http://www.appcoda.com/nsdate/> for details.

All the codes are tested on XCode 7.2 Swift 2.1.1 playground. 

The prject contains the uses of following classes or enums or structs:  
- **NSDate**  
- **NSDateFormatter**  
- **NSCalendar**  
- **NSDateComponents**  
- **NSDateComponentsFormatter**  
- **NSComparisonResult** enum  
- **NSCalendarUnit** struct  

I'm an open source project beginner and very interest in the open source community. I hope I can be one of them and am pretty likely to communicate with anyone who are already one of them. Please, please contact me if you have any suggestion. My Email: <liuyubobobo@gmail.com> :)

---

##Part I : Using NSDate and NSDateFormatter
- Create a **NSDate** object
- Create a **NSDateFormatter** object
- Use ``dateStyle`` property for **NSDateFormatter** to show predefined date format
- Give an **NSLocale** object to ``locale`` property of **NSDateFormatter** to show locale-related date format.
  - I use China locale in this example because I'm a Chinese:)
- Give an *date specifier string* to ``dateFormat`` property of **NSDateFormatter** to show custom date format
- Use **NSDateFormatter**'s ``dateFromString:`` method to convert a date string to an **NSDate** object

##PART II : Using NSDateComponents
- Create an **NSCalendar** object
- Convert an **NSDate** object into an **NSDateComponents** object using **NSCalendar**'s ``components:fromDate`` method
- Convert an **NSDateComponents** object back to an **NSDate** object using **NSCalendar**'s ``dateFromComponents:`` method
- See results of one date from different time zones by setting **NSDataComponent**s' ``timezone`` property

##PART III : Comparing Date and Time
- Compare two dates by **NSDate**'s ``earlierDate:`` and ``laterDate:`` methods
- Compare two dates by ``compare`` function and **NSComparisonResult** enum
- Compare two dates by using **NSDate**'s ``timeIntervalSinceReferenceDate`` property
- Use ``isEqualToDate:`` to see if two **NSDate**s' objects are equal

##PART IV : Calculating Future and Past Dates
- Make use the **NSCalendar** class and **NSCalendarUnit** struct
- Make use the **NSDateComponents**
- Use **NSDate**'s ``dateByAddingTimeInterval:`` method
  - This method may produce wrong results because of leap seconds, leap years, daylight saving time, and so on
- Substract a number of days from an **NSDate**

##PART V : Calculating Date Difference
- Use the **NSCalendar**'s ``components:fromDate:toDate:options:`` method
- Use **NSDateComponentsFormatter**'s ``stringFromTimeInterval`` method
- Use **NSDateComponentsFormatter**'s ``stringFromDate:toDate`` method