# SMDateUtilities
```swift
    //MARK: - Relative dates from the current date
    
    static var dateTomorrow: Date? { get }
    static var dateYesterday: Date? { get }
    
    // for getting past date need to pass a negative value
    static func nowByAddingYears(_ distance: Int) -> Date?
    static func nowByAddingMonths(_ distance: Int) -> Date?
    static func nowByAddingWeeks(_ distance: Int) -> Date?
    static func nowByAddingDays(_ distance: Int) -> Date?
    static func nowByAddingHours(_ distance: Int) -> Date?
    static func nowByAddingMinutes(_ distance: Int) -> Date?
    
    static func dateFromNow(byAdding component: Calendar.Component, distance: Int) -> Date?
    
    
    //MARK: - Comparing dates
    
    func isEqualToDateIgnoringTime(_ date: Date) -> Bool
    var isToday: Bool { get }
    var isTomorrow: Bool { get }
    var isYesterday: Bool { get }
    func isSameWeekAsDate(_ date: Date) -> Bool
    var isThisWeek: Bool { get }
    var isNextWeek: Bool { get }
    var isLastWeek: Bool { get }
    func isSameYearAsDate(_ date: Date) -> Bool
    var isThisYear: Bool { get }
    var isNextYear: Bool { get }
    var isLastYear: Bool { get }
    func isEarlierThanDate(_ date: Date) -> Bool
    func isLaterThanDate(_ date: Date) -> Bool
    func isSameYearAndMonthAsDate(_ date: Date) -> Bool
    
    
    //MARK: - Adjusting dates
    
    // for getting past date need to pass a negative value
    func dateByAddingYears(_ distance: Int) -> Date?
    func dateByAddingMonths(_ distance: Int) -> Date?
    func dateByAddingWeeks(_ distance: Int) -> Date?
    func dateByAddingDays(_ distance: Int) -> Date?
    func dateByAddingHours(_ distance: Int) -> Date?
    func dateByAddingMinutes(_ distance: Int) -> Date?
    
    func dateByAdding(component: Calendar.Component, distance: Int) -> Date?
    
    var dateAtStartOfDay: Date { get }
    
    
    //MARK: - Retrieving intervals
    
    // returning negative value in the case of past date
    static func yearsToNowFrom(_ date: Date) -> Int?
    static func monthsToNowFrom(_ date: Date) -> Int?
    static func weeksToNowFrom(_ date: Date) -> Int?
    static func daysToNowFrom(_ date: Date) -> Int?
    static func hoursToNowFrom(_ date: Date) -> Int?
    static func minutesToNowFrom(_ date: Date) -> Int?
    
    static func distanceFromNow(to date: Date, with component: Calendar.Component) -> Int?
    
    // can returning negative value
    func yearsTo(_ date: Date) -> Int?
    func monthsTo(_ date: Date) -> Int?
    func weeksTo(_ date: Date) -> Int?
    func daysTo(_ date: Date) -> Int?
    func hoursTo(_ date: Date) -> Int?
    func minutesTo(_ date: Date) -> Int?
    
    func distanceTo(_ date: Date, with component: Calendar.Component) -> Int?
    
    
    //MARK: - Decomposing dates
    
    var nearestHour: Int { get }
    var hour: Int { get }
    var minute: Int { get }
    var seconds: Int { get }
    var day: Int { get }
    var month: Int { get }
    var weekOfYear: Int { get }
    var weekOfMonth: Int { get }
    var weekday: Int { get }
    var weekdayOrdinal: Int { get } // e.g. 2nd Tuesday of the month == 2
    var year: Int { get }
    
    
    //MARK: - Converting
    
    static func convertString(_ dateStr: String, toDateWithFormat format: String, locale: Locale, timeZone: TimeZone) -> Date?
    static func convertDate(_ date: Date, toStringWithFormat format: String, locale: Locale, timeZone: TimeZone) -> String
```
