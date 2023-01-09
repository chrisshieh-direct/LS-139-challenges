class PerfectNumber
  def self.classify(int)

    raise StandardError, "Must be a positive integer" if int < 1
    divisor_add = self.find_factors(int)
    case
    when divisor_add == int
      return 'perfect'
    when divisor_add < int
      return 'deficient'
    when divisor_add > int
      return 'abundant'
    end
  end

  def self.find_factors(int)
    factors = [1]
    2.upto(int - 1) do |x|
      factors << x if int % x == 0
    end
    factors.sum
  end
end
