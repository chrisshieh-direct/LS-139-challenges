class RomanNumeral
  def initialize(int)
    @decimal = int
    @parse_holder = int
    @roman = ''
  end

  ROMAN_VALUES = {
    M: 1000,
    CM: 900,
    L: 50,
    D: 500,
    CD: 400,
    XC: 90,
    XL: 40,
    X: 10,
    C: 100,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  }

  def to_roman
    key_process_arr = ROMAN_VALUES.to_a.sort_by { |item| item[1] }.reverse
    key_process_arr.each do |subarr|
      factor_out(subarr[0])
    end
    @roman
  end

  def factor_out(key)
    factors = @parse_holder / ROMAN_VALUES[key]
    factors.times { @roman << key.to_s }
    @parse_holder -= factors * ROMAN_VALUES[key]
  end
end

