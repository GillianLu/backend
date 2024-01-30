#poly
class Bird
  def tweet
    puts "Some bird sound"
  end
end

class Sparrow < Bird
  def tweet
    puts "Chirp chirp"
  end
end

class Duck < Bird
  def tweet
    puts "Quack quack"
  end
end

def make_bird_tweet(bird)
  bird.tweet
end

sparrow = Sparrow.new
duck = Duck.new

make_bird_tweet(sparrow)
make_bird_tweet(duck)


#duck
class Duck
  def quack
    puts "Quack!"
  end
end

class Person
  def quack
    puts "I'm pretending to be a duck!"
  end
end

def make_it_quack(duck)
  duck.quack
end

duck = Duck.new
person = Person.new

make_it_quack(duck)
make_it_quack(person)
