class Ship
  attr_reader :size
  attr_accessor :hits, :locations

  def initialize(locations = [])
    @size = self.class::SIZE
    @hits = 0
    @locations = locations
  end

  def sunk?
    hits >= size
  end

 def hit
   self.hits += 1
 end

 def attempt(target)
   if locations.include?(target)
     hit
     true
   else
     false
   end
 end

end
