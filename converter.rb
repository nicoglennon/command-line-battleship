module Converter

  KEY = { "A" => 0,
          "B" => 1,
          "C" => 2,
          "D" => 3,
          "E" => 4,
          "F" => 5,
          "G" => 6,
          "H" => 7,
          "I" => 8,
          "J" => 9
        }

  def self.convert(input)
    split_input = input.split("")

    # when targeting anything in row 10, the above split will create 3 entries in the array. Join the last two:
    if split_input.length == 3
      split_input = [split_input[0], split_input[1] + split_input[2]]
    end

    # return a split input with the board's coordinates:
    split_input[0] = KEY[input[0]]
    split_input[1] = split_input[1].to_i - 1
    split_input
  end
end
