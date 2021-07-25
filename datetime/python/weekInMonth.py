import json
import sys
import calendar
#import datetime
from datetime import datetime
from dateutil import relativedelta

def weekInMonth(year, month) -> list:
    result = []

    if month >= 13 or month < 1:
        raise Exception('Month is error in range')

    delta = datetime(year, month + 1, 1) - datetime(year, month, 1)
    lastDayInMonth = delta.days
    tmpFirstDay = 1
    while tmpFirstDay <= lastDayInMonth:
        weekDay = calendar.weekday(year, month, tmpFirstDay)
        if weekDay == 6:
            lastDayDelta = weekDay
        else:
            lastDayDelta = 6 - weekDay - 1

        if tmpFirstDay + 7 >= lastDayInMonth:
            lastDay = lastDayInMonth
        else:
            lastDay = (datetime(year, month, tmpFirstDay) + relativedelta.relativedelta(days = lastDayDelta)).day
        result.append("{0}-{1}-{2} ~ {3}-{4}-{5}".format(year, month, tmpFirstDay, year, month, lastDay))
        tmpFirstDay = lastDay + 1
    return result

if __name__ == "__main__":
    try:
        result = weekInMonth(int(sys.argv[1]), int(sys.argv[2]))
        print(result)
    except Exception as e:
        print(str(e))
