#Encapsulation
#activity
class Addition
  def initialize(a,b)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end
end

add = Addition.new(11,27612)
puts add.add
