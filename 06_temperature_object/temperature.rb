class Temperature
  def initialize(hsh)
    @hsh = hsh
  end

  def self.in_fahrenheit(fa)
    return Fahrenheit.new(fa)
  end

  def self.in_celsius(ce)
    return Celsius.new(ce)
  end

  def to_fahrenheit
    return value = @hsh.keys[0] == :f ? @hsh.values[0] : @hsh.values[0] * 9 / 5 + 32
  end

  def to_celsius
    return value = @hsh.keys[0] == :c ? @hsh.values[0] : (@hsh.values[0] - 32) * 5 / 9
  end

end


class Celsius < Temperature
  def initialize(ce)
    @hsh = Hash.new
    @hsh[:c] = ce
    super(@hsh)
  end
end

class Fahrenheit < Temperature
  def initialize(fa)
    @hsh = Hash.new
    @hsh[:f] = fa
    super(@hsh)
  end
end
