# @Author: Viacheslav Shynkarenko <Slavik>
# @Date:   2017-06-15T17:06:15+03:00
# @Email:  shinkarenko.vi@gmail.com
# @Last modified by:   Slavik
# @Last modified time: 2017-06-15T17:30:40+03:00
# @Copyright: Viacheslav Shynkarenko. All Rights Reserved.

# The phone number entered somewhere by user.
class PhoneNumberEntered
  def initialize(number)
    @number = number
  end

  attr_reader :number
end

# The format validator of a phone number. It incapsulates validation regex.
class PhoneNumberFormatValidator
  REGEX = /\+?\d+\z/

  def self.valid?(number)
    return true if REGEX =~ number
    false
  end
end

# The validated phone number decorator. Adds validation to PhoneNumberEntered.
class PhoneNumberValidated
  def initialize(raw_number)
    @raw_number = raw_number
  end

  def number
    input_number = @raw_number.number
    raise 'Invalid number' unless PhoneNumberFormatValidator.valid?(input_number)
    input_number
  end
end

# The phone which is able to call valid phone numbers.
class Phone
  def call(phone_number)
    puts phone_number.number
  end
end

entered = '+12025550127'
Phone.new.call(
  PhoneNumberValidated.new(
    PhoneNumberEntered.new(entered)
  )
)
