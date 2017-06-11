class Board
  attr_reader :ships
  attr_accessor :state

  def initialize(ships = {})
    @ships = ships
    @state = Array.new(10) { Array.new(10, " ") }
  end

  def fire(target)
    ships.each_value do |ship|
      if ship.attempt(target)
        return true
      end
    end
    false
  end

  def scan
    ships.each_pair do |name_key, ship|
      if ship.sunk?
        ships.delete(name_key)
        return true
      end
    end
    false
  end

  def mark_hit(coord)
    state[coord[0]][coord[1]] = "X"
  end

  def mark_miss(coord)
    state[coord[0]][coord[1]] = "/"
  end

  def mark_placing(coord)
    state[coord[0]][coord[1]] = "*"
  end

  def print_state
<<-STATESTRING
      1   2   3   4   5   6   7   8   9   10
    +---------------------------------------+
  A | #{state[0][0]} | #{state[0][1]} | #{state[0][2]} | #{state[0][3]} | #{state[0][4]} | #{state[0][5]} | #{state[0][6]} | #{state[0][7]} | #{state[0][8]} | #{state[0][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  B | #{state[1][0]} | #{state[1][1]} | #{state[1][2]} | #{state[1][3]} | #{state[1][4]} | #{state[1][5]} | #{state[1][6]} | #{state[1][7]} | #{state[1][8]} | #{state[1][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  C | #{state[2][0]} | #{state[2][1]} | #{state[2][2]} | #{state[2][3]} | #{state[2][4]} | #{state[2][5]} | #{state[2][6]} | #{state[2][7]} | #{state[2][8]} | #{state[2][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  D | #{state[3][0]} | #{state[3][1]} | #{state[3][2]} | #{state[3][3]} | #{state[3][4]} | #{state[3][5]} | #{state[3][6]} | #{state[3][7]} | #{state[3][8]} | #{state[3][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  E | #{state[4][0]} | #{state[4][1]} | #{state[4][2]} | #{state[4][3]} | #{state[4][4]} | #{state[4][5]} | #{state[4][6]} | #{state[4][7]} | #{state[4][8]} | #{state[4][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  F | #{state[5][0]} | #{state[5][1]} | #{state[5][2]} | #{state[5][3]} | #{state[5][4]} | #{state[5][5]} | #{state[5][6]} | #{state[5][7]} | #{state[5][8]} | #{state[5][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  G | #{state[6][0]} | #{state[6][1]} | #{state[6][2]} | #{state[6][3]} | #{state[6][4]} | #{state[6][5]} | #{state[6][6]} | #{state[6][7]} | #{state[6][8]} | #{state[6][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  H | #{state[7][0]} | #{state[7][1]} | #{state[7][2]} | #{state[7][3]} | #{state[7][4]} | #{state[7][5]} | #{state[7][6]} | #{state[7][7]} | #{state[7][8]} | #{state[7][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  I | #{state[8][0]} | #{state[8][1]} | #{state[8][2]} | #{state[8][3]} | #{state[8][4]} | #{state[8][5]} | #{state[8][6]} | #{state[8][7]} | #{state[8][8]} | #{state[8][9]} |
    |---|---|---|---|---|---|---|---|---|---|
  J | #{state[9][0]} | #{state[9][1]} | #{state[9][2]} | #{state[9][3]} | #{state[9][4]} | #{state[9][5]} | #{state[9][6]} | #{state[9][7]} | #{state[9][8]} | #{state[9][9]} |
    +---------------------------------------+
STATESTRING
  end

end
