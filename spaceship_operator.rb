class Length
  attr_reader :cm
  def initialize(cm)
    @cm = cm
  end

  def to_s
    inches = (@cm / 2.54).floor
    feet = (inches / 12).floor
    "#{feet}'#{inches % 12}\""
  end

  def <=>(other)
    @cm - other.cm
  end
end

# a = Length.new(48)
# puts a.to_s  # => 1'6"

cms = [16, 31, 27, 31, 15, 9, 85].map { |cm| Length.new(cm) }
# puts cms
puts cms.sort


puts cms[0] <=> cms[1]
