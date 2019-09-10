require 'rspec'

def battleship_board_builder
  board = Array.new(8) { Array.new(8) }
  letters = ('A'..'H').to_a
  letter_hash = letters.each_with_object(Hash.new) { |letter, hash| hash[letters.index(letter)] = letter }

  board.map.with_index do |row, row_idx|
    row.map.with_index do |cell, idx|
      cell = "#{letter_hash[row_idx]}#{idx + 1}"
    end
  end
end
