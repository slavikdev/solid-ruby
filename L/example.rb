# @Author: Viacheslav Shynkarenko <Slavik>
# @Date:   2017-06-16T02:11:36+03:00
# @Email:  shinkarenko.vi@gmail.com
# @Last modified by:   Slavik
# @Last modified time: 2017-06-16T02:11:53+03:00
# @Copyright: Viacheslav Shynkarenko. All Rights Reserved.

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
