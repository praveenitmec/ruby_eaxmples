class Animal
  LEGS = 4
  def legs_in_animal
    LEGS
  end

  class NestedAnimal
    def legs_in_nested_animal
      LEGS
    end
  end
end
puts "Nested Animal"
p Animal::NestedAnimal.new.legs_in_nested_animal

class Reptile < Animal
    def legs_in_reptile
      LEGS
    end
  end

puts "normal inheritance"
p Reptile.new.legs_in_reptile

class MyAnimals
    LEGS = 2 #lexical Scope ==> Have precednce than inheritance

  class Bird < Animal
    def legs_in_bird
      LEGS
    end
  end
end

puts "Nested or hierarchy precedence"
p MyAnimals::Bird.new.legs_in_bird

class MyAnimals::Oyster < Animal
  def legs_in_oyster
    LEGS
  end
end

p MyAnimals::Oyster.new.legs_in_oyster


