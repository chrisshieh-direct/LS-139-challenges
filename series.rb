class Series
  def initialize(str)
    @number = str
    @digits = str.chars
  end

  def slices(seqlen)
    raise ArgumentError, "Invalid input" if seqlen > @number.length
    result = []
    0.upto(@digits.length - 1) do |start|
      result << @digits[start, seqlen].map(&:to_i)
    end
    result.select { |item| item.length == seqlen }
  end
end
