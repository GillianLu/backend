def centuryFromYear(year)
  century = year / 100
  century += 1 if year % 100 != 0
  puts century

end

centuryFromYear(1705)
centuryFromYear(1601)
centuryFromYear(1900)
centuryFromYear(2000)
