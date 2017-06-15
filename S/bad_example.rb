# @Author: Viacheslav Shynkarenko <Slavik>
# @Date:   2017-06-15T17:06:15+03:00
# @Email:  shinkarenko.vi@gmail.com
# @Last modified by:   Slavik
# @Last modified time: 2017-06-15T17:44:41+03:00
# @Copyright: Viacheslav Shynkarenko. All Rights Reserved.

# The phone which is able to call valid phone numbers.
# NOTE: You'd probably laugh because this code is 3 times shorter
# than good_example.rb and most developers, especially Ruby developers,
# think simplicity corellates to size.
# It's not always true. In this case we don't do any real magic and calling is
# as simple as puts. Real example would involve heavy logic, but even now
# you can see this Phone class does two things: validates and calls.
# While both are simple it doesn't seem like a big deal. But if
# validation is more complex and if call involves using external APIs, this
# class will get heavier and harder to maintain. Affecting validation
# might affect the calling. Test class or spec will be larger.
class Phone
  REGEX = /\+?\d+\z/

  def call(phone_number)
    raise 'Invalid number' unless REGEX =~ number
    puts phone_number
  end
end

entered = '+12025550127'
Phone.new.call(entered)
