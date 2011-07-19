class Roman
  ROMAN_MAX = 4999

  def initialize(value)
    if (value <= 0 || value > 4999)
      fail "number should be < 0 and >= #{ROMAN_MAX}"
    end
    @value = value
  end

  FACTORS = [['M', 1000], ['CM', 900], ['D',500], ['CD', 400], ['C', 100], ['XC', 90], ['L', 50], ['XL', 40], ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]]

  def to_s
    value = @value
    roman = ""

    for code, factor in FACTORS
      count, value = value.divmod(factor)
      roman << code * count
    end
    roman
  end
end
