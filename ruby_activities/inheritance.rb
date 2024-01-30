#inheritance exercise
#activity
# We have a Confection class representing baked desserts. Your job is to create a new subclass of Confection, named Cupcake
# and Banana Cake. Cupcakes and Banana Cakes need to be baked just like other confections, but cupcakes also need to be
# frosted afterward. Write a prepare method for your Cupcake and Banana Cake class that prints "Baking at 350 degrees for
# 25 minutes.", and then prints "Applying frosting" for Cupcake only.

class Baked_desserts
  def bake_time
    'Baking at 350 degrees for 25 minutes.'
  end
end

class Banana_cake < Baked_desserts
  def bake_time
    puts 'Banana Cake'
    super
  end
end

class Cupcake < Baked_desserts
  def bake_time
    puts 'Cupcake'
    super + "\n" +'Apply Frosting'
  end
end

cupcake = Cupcake.new
banana = Banana_cake.new
puts cupcake.bake_time
puts banana.bake_time
