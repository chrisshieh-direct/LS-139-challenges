class SumOfMultiples
  attr_accessor :factors

  def self.to(int, set = [3, 5])
    multiples = []
    1.upto(int - 1) do |x|
      multiples << x if set.any? { |num| x % num == 0 }
    end
    multiples.sum
  end

  def initialize(*set)
    @factors = set
  end

  def to(int)
    self.class.to(int, factors)
  end
end
