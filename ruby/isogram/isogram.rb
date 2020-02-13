=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end


class Isogram
  def self.isogram?(string)
    hash = {}
    string.delete! "-"
    string.delete! " "
    string.each_char do |char|
      char = char.downcase
      if hash[char]
        return false
      end
      hash[char] = true
    end
    return true
  end
end

