require('pry-byebug')
require_relative('guy')
require_relative('building')

def falling

  test_thread = Thread.new {
    guy_fall(@guy1, @guy2, @guy3, @guy4)
  }

  test_thread2 = Thread.new {
    building
  }
  test_thread.join
  test_thread2.join
  # b = Thread.new(building)
end

falling