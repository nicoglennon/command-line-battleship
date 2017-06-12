module BoardView

  def self.get_target
    gets.chomp
  end

  def self.state(board)
puts <<-STATESTRING
      1   2   3   4   5   6   7   8   9   10
    +---------------------------------------+
  A | #{board.state[0][0]} | #{board.state[0][1]} | #{board.state[0][2]} | #{board.state[0][3]} | #{board.state[0][4]} | #{board.state[0][5]} | #{board.state[0][6]} | #{board.state[0][7]} | #{board.state[0][8]} | #{board.state[0][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  B | #{board.state[1][0]} | #{board.state[1][1]} | #{board.state[1][2]} | #{board.state[1][3]} | #{board.state[1][4]} | #{board.state[1][5]} | #{board.state[1][6]} | #{board.state[1][7]} | #{board.state[1][8]} | #{board.state[1][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  C | #{board.state[2][0]} | #{board.state[2][1]} | #{board.state[2][2]} | #{board.state[2][3]} | #{board.state[2][4]} | #{board.state[2][5]} | #{board.state[2][6]} | #{board.state[2][7]} | #{board.state[2][8]} | #{board.state[2][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  D | #{board.state[3][0]} | #{board.state[3][1]} | #{board.state[3][2]} | #{board.state[3][3]} | #{board.state[3][4]} | #{board.state[3][5]} | #{board.state[3][6]} | #{board.state[3][7]} | #{board.state[3][8]} | #{board.state[3][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  E | #{board.state[4][0]} | #{board.state[4][1]} | #{board.state[4][2]} | #{board.state[4][3]} | #{board.state[4][4]} | #{board.state[4][5]} | #{board.state[4][6]} | #{board.state[4][7]} | #{board.state[4][8]} | #{board.state[4][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  F | #{board.state[5][0]} | #{board.state[5][1]} | #{board.state[5][2]} | #{board.state[5][3]} | #{board.state[5][4]} | #{board.state[5][5]} | #{board.state[5][6]} | #{board.state[5][7]} | #{board.state[5][8]} | #{board.state[5][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  G | #{board.state[6][0]} | #{board.state[6][1]} | #{board.state[6][2]} | #{board.state[6][3]} | #{board.state[6][4]} | #{board.state[6][5]} | #{board.state[6][6]} | #{board.state[6][7]} | #{board.state[6][8]} | #{board.state[6][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  H | #{board.state[7][0]} | #{board.state[7][1]} | #{board.state[7][2]} | #{board.state[7][3]} | #{board.state[7][4]} | #{board.state[7][5]} | #{board.state[7][6]} | #{board.state[7][7]} | #{board.state[7][8]} | #{board.state[7][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  I | #{board.state[8][0]} | #{board.state[8][1]} | #{board.state[8][2]} | #{board.state[8][3]} | #{board.state[8][4]} | #{board.state[8][5]} | #{board.state[8][6]} | #{board.state[8][7]} | #{board.state[8][8]} | #{board.state[8][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  J | #{board.state[9][0]} | #{board.state[9][1]} | #{board.state[9][2]} | #{board.state[9][3]} | #{board.state[9][4]} | #{board.state[9][5]} | #{board.state[9][6]} | #{board.state[9][7]} | #{board.state[9][8]} | #{board.state[9][9]} |
    +---------------------------------------+
STATESTRING
  end
end
