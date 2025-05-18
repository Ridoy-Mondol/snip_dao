function isLeapYear(year: i32): bool {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

export function getYearFromTimestamp(timestamp: u64): u16 {
  let seconds = i64(timestamp);
  let year: i32 = 1970;
  const SECONDS_IN_DAY = 86400;

  while (true) {
    let daysInYear = isLeapYear(year) ? 366 : 365;
    let secondsInYear = daysInYear * SECONDS_IN_DAY;
    if (seconds < secondsInYear) break;
    seconds -= secondsInYear;
    year += 1;
  }

  return <u16>year;
}

export function getMonthFromTimestamp(timestamp: u64): u8 {
  let seconds = i64(timestamp);
  let year: i32 = 1970;
  const SECONDS_IN_DAY = 86400;

  while (true) {
    let daysInYear = isLeapYear(year) ? 366 : 365;
    let secondsInYear = daysInYear * SECONDS_IN_DAY;
    if (seconds < secondsInYear) break;
    seconds -= secondsInYear;
    year += 1;
  }

  const monthDays = [
    31, 
    isLeapYear(year) ? 29 : 28, 
    31, 
    30, 
    31, 
    30, 
    31, 
    31, 
    30, 
    31, 
    30, 
    31  
  ];

  for (let month = 0; month < 12; month++) {
    let secondsInMonth = monthDays[month] * SECONDS_IN_DAY;
    if (seconds < secondsInMonth) {
      return <u8>(month + 1);
    }
    seconds -= secondsInMonth;
  }

  return 12;
}
