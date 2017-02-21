require_relative 'state_capitals_dictionary'

class StateCapitals
  attr_reader :state

  def initialize(state)
    @state = state
  end

  def find_capital
    state_abbreviation = state.map do |state|
      state.values
      require 'pry'; binding.pry
    end
STATE_CAPITALS
  end

end

# def translate_to_braille
#     letters = input.chars

#
#     braille_characters = letters.map do |letter|
#      ALL_BRAILLE_KEY[letter]
#       if letter == letter.upcase && !special_characters.include?(letter)
#         ALL_BRAILLE_KEY[:capitalize] + ALL_BRAILLE_KEY[letter.downcase]
#       else
#           ALL_BRAILLE_KEY[letter]
#       end
#     end
#     braille_characters.join("")
#   end
