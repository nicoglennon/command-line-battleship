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

  def empty?
    ships.empty?
  end

end
