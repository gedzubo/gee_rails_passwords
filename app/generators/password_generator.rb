class PasswordGenerator
  LETTERS = "abcdefghijklmnopqrstuvwxyz".freeze
  CAPITAL_LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  NUMBERS = "0123456789".freeze
  SYMBOLS = "!#$%()*+,-.:;<=>@^_{|}~]".freeze

  def initialize(length: 8, use_capital_letters: false, use_numbers: false, use_symbols: false)
    @length = length
    @use_capital_letters = use_capital_letters
    @use_numbers = use_numbers
    @use_symbols = use_symbols
  end

  def generate
    password = ""

    length.times do
      rand_index = rand(0..available_characters.size - 1)
      password += available_characters[rand_index]
    end

    password
  end

  private
  attr_reader :length, :use_capital_letters, :use_numbers, :use_symbols


  def available_characters
    characters = LETTERS
    characters += CAPITAL_LETTERS if use_capital_letters
    characters += NUMBERS if use_numbers
    characters += SYMBOLS if use_symbols

    @available_characters ||= characters
  end
end
