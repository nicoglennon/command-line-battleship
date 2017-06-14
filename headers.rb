module Headers

  def self.main
    puts "\e[H\e[2J"
    puts "************************"
    puts "    --BATTLESHIP--\n"
    puts "************************\n\n"
  end

  def self.positioning
    puts "POSITION YOUR SHIPS\n"
    puts "---------------------\n"
    puts "\nPOSITIONING INSTRUCTIONS:"
    puts "\n"
    puts "You will be placing EACH PIECE of each of your ships. \nFor example, the Carrier has 5 pieces, so you if you wanted to set it horizontally starting in A1 you would enter: A1, A2, A3, A4, A5 \n(the locations must be entered one by one, so you would start with A1 and press return, then A2 and press return, etc):\n\n"
  end

  def self.play
    puts "PLAY\n"
    puts "----------\n\n"
  end

  def self.player(number)
    puts " PLAYER ##{number}\n"
    puts "****************\n\n"
  end

  def self.intro_player(number)
    puts "\e[H\e[2J"
    puts "Player ##{number}, press enter to start!"
    gets
  end

  def self.start_playing
    puts "\e[H\e[2J"
    puts "All ships have been positioned - press enter to start playing!"
    gets
  end

  def self.prep_for_fire(turn)
    puts "Player #{turn}: Enter location you want to fire at (i.e. A1):"
  end

  def self.hit_something
    puts "** You hit something! **"
  end

  def self.miss
    puts "You missed..."
  end

  def self.sink_ship
    puts "******* YOU SUNK A SHIP! *******"
  end

  def self.switch_players
    puts "Press enter to switch players:"
    gets
  end

  def self.wrong_target_input
    puts "Wrong input for target: please use required format (i.e. A1, B7, etc)"
  end

  def self.declare_winner(number)
    puts "Game over! Player #{number} wins!"
  end

end
