require "rspec"
require "prime_multi_table"

describe "prime multiplication table functions" do

  describe "#is_prime?" do
    it "checks if a number is a prime" do
      expect(is_prime?(-1)).to be_falsey
      expect(is_prime?(0)).to be_falsey
      expect(is_prime?(1)).to be_falsey
      expect(is_prime?(2)).to be_truthy
      expect(is_prime?(3)).to be_truthy
      expect(is_prime?(4)).to be_falsey
      expect(is_prime?(5)).to be_truthy
    end
  end

  describe "#n_primes" do
    it "returns first n number of prime" do
      expect(n_primes(-1)).to eq([])
      expect(n_primes(0)).to eq([])
      expect(n_primes(1)).to eq([2])
      expect(n_primes(2)).to eq([2,3])
      expect(n_primes(3)).to eq([2,3,5])
      expect(n_primes(10)).to eq([2,3,5,7,11,13,17,19,23,29])
    end
  end
end
