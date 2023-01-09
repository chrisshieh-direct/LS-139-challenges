class Octal
  def initialize(str)
    @number_string = str
    @numbers = str.chars.reverse
    @conversion = 0
  end

  def to_decimal
    return 0 unless @numbers.all? { |x| '01234567'.include?(x) }
    power = 0
    @numbers.each do |num|
      @conversion += num.to_i * (8 ** power)
      power += 1
    end
    @conversion.to_i
  end
end
