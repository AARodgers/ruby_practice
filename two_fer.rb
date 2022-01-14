require 'minitest/autorun'
require_relative 'two_fer'

class TwoFerTest < Minitest::Test
  def test_no_name_given(name = "")
    if name == ""
      puts "One for you, one for me."
    end
  end

  def test_a_name_given(name = "Alice")
    if name == ""
      puts "One for you, one for me."
    else
      puts  "One for #{name}, one for me."
    end
  end

  def test_another_name_given(name = "Bob")
    if name == ""
      puts "One for you, one for me."
    else
      puts  "One for #{name}, one for me."
    end
  end
end

