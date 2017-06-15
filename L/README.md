# Liskov Substitution Principle
> Substitutability is a principle in object-oriented programming stating that, in a computer program, if S is a subtype of T, then objects of type T may be replaced with objects of type S (i.e. an object of type T may be substituted with any object of a subtype S) without altering any of the desirable properties of T (correctness, task performed, etc.).
[Wikipedia](https://en.wikipedia.org/wiki/Liskov_substitution_principle)

## WTF?
If a dog can bark, then a husky (also a dog) should be able to bark too.
That’s one part of the principle. Another one is that if anyone expects just a dog,
then husky, pug or even poodle should fit the requirement.

This principle can be easily demonstrated in languages like C# which has
interfaces and abstract classes. Because C# requires to specify type
of a method’s argument or return type, you’d see that the type specified
can be very generic and allow objects of more specific types to be used.
In Ruby this isn’t apparent but still can be demonstrated:
```ruby
# Generic dog.
class Dog
  def bark
    puts 'Ruff-ruff'
  end
end

# Specific kind of dogs.
class Husky < Dog
end

# Another specific kind.
class Pug < Dog
end

# Yard accepts any dog and expects it to bark.
class Yard
  def initialize(dog)
    @dog = dog
  end

  def protect
    @dog.bark
  end
end

# Both lines produce same result
# because Husky and Pug are Dog and can bark.
Yard.new(Husky.new).protect
Yard.new(Pug.new).protect
```
