# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
require 'rspec'

class Prime
  def is_prime?(number)
    counter = 2
    while counter < number
      if (number % counter) == 0
        return false
      end
      counter += 1
    end
    true
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)
    array = [2]
    counter = 2
    num_counter = 3
    while num_counter < number && counter < number
      mod = (num_counter % counter)
      if mod != 0
        array << num_counter
        counter = 2
      else 
        counter += 1
      end
      num_counter += 1
    end
    array.max
  end
end

# Tests

RSpec.describe(Prime) do
  let(:prime) { Prime.new }
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(3)).to eq(true)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(4)).to eq(false)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(5)).to eq(true)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(6)).to eq(false)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(7)).to eq(true)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(8)).to eq(false)
    end
  end
  describe '#is_prime?' do
    it "should return whether a particular number is a prime number." do
      expect(prime.is_prime?(9)).to eq(false)
    end
  end
  describe '#highest_prime_number_under' do
    it "should return return the highest prime number under the given number." do
      expect(prime.highest_prime_number_under(10)).to eq(7)
    end
  end
  describe '#highest_prime_number_under' do
    it "should return return the highest prime number under the given number." do
      expect(prime.highest_prime_number_under(100)).to eq(97)
    end
  end
end