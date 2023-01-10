class Clock
  def initialize(hour = 0, minute = 0)
    @hour = hour
    @minute = minute
    @raw_time = (hour * 60) + minute
  end

  def self.at(hour = 0, minute = 0)
    Clock.new(hour, minute)
  end

  def convert_raw_to_hour_minute(int)
    days_removed = int.divmod(1440)[1]
    days_removed.divmod(60)
  end

  def +(int)
    new_time = @raw_time + int
    Clock.new(*convert_raw_to_hour_minute(new_time))
  end

  def -(int)
    new_time = @raw_time - int
    Clock.new(*convert_raw_to_hour_minute(new_time))
  end

  def to_s
    sprintf("%02d", @hour) + ":" + sprintf("%02d", @minute)
  end

  def ==(compare)
    self.to_s == compare.to_s
  end
end
