require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end

  def test_it_has_attributes
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.category
    assert_equal 10, room.length
    assert_equal 13, room.width
  end

  def test_it_calculates_area
    room = Room.new(:bedroom, 10, 13)
    expected = 10*13
    assert_equal expected, room.area
  end

end
