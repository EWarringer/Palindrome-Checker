class Palindrome
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def is_palindrome?
    simplified = @string.reverse.split(" ").join().downcase.gsub(/[^a-z0-9\s]/i, '')
    simplified == simplified.reverse
  end
end
