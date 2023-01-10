require 'date'

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    target_weekday = convert_weekday(weekday)
    target_week = convert_week(schedule)
    first_day = Date.civil(@year, @month, target_week).wday
    diff = target_weekday >= first_day ? target_weekday - first_day : target_weekday + 7 - first_day
    if schedule == 'last'
      begin
        return [Date.civil(@year, @month, diff + target_week), Date.civil(@year, @month, diff + target_week + 7)].max
      rescue
      end
    end
    begin
      Date.civil(@year, @month, diff + target_week)
    rescue
      nil
    end
  end

  def convert_weekday(weekday)
    case weekday.downcase
    when 'sunday'
      0
    when 'monday'
      1
    when 'tuesday'
      2
    when 'wednesday'
      3
    when 'thursday'
      4
    when 'friday'
      5
    when 'saturday'
      6
    end
  end

  def convert_week(schedule)
    case schedule.downcase
    when 'first'
      start_date = 1
    when 'second'
      start_date = 8
    when 'third'
      start_date = 15
    when 'fourth'
      start_date = 22
    when 'fifth'
      start_date = 29
    when 'teenth'
      start_date = 13
    when 'last'
      start_date = 22
    end
  end
end
