require "rspec"
require "./palindrome"

RSpec.describe Palindrome do
  describe "#is_palindrome?" do
    it "returns true for 'racecar'" do
      word = Palindrome.new("racecar")
      expect(word.is_palindrome?).to be true
    end

    it "returns false for 'cheeseburger'" do
      word = Palindrome.new("cheeseburger")
      expect(word.is_palindrome?).to be false
    end

    context "it ignores spacing" do
      it "returns true for 'acrobats stab orca'" do
        word = Palindrome.new("acrobats stab orca")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores capitalization" do
      it "returns true for 'Acrobats StAb orca'" do
        word = Palindrome.new("Acrobats StAb orca")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores punctuation" do
      it "returns true for 'acrobats stab orca'" do
        word = Palindrome.new("acrobats stab orca")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores spacing, punctuation, and capitalization by default" do
      it "returns true for 'A Santa dog lived as a devil God at NASA.'" do
        sentence = Palindrome.new("A Santa dog lived as a devil God at NASA.")
        expect(sentence.is_palindrome?).to be true
      end
    end
  end
end
