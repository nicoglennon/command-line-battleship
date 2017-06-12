module ShipView

  def self.positioning_instructions(ship, iteration)
    puts "#{ship.class.to_s.upcase}:\n"
    puts "**********\n"
    puts "Enter where in the board you want to locate your #{ship.class} (it has a size of #{ship.size})."
    puts "#{ship.size - iteration} more entries to go (enter them one by one, i.e, A7):"
  end

  def self.positions(ship)
    puts "\nYour #{ship.class} has the following position: #{ship.locations}\n\n"
  end
end
