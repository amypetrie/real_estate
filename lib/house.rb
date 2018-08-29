require 'pry'

class House

  attr_reader :address, :price_string, :rooms, :area

  def initialize(price_string, address_string)
    @price_string = price_string
    @address = address_string
    @rooms = []
    @area = 0
  end

  def price
    price_array = @price_string.chars
    price_array.delete_if do |price_char|
      price_char == "$"
    end
    price_array.join("").to_i
  end

  def add_room(room)
    @area += room.area
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.keep_if do |room|
      room.category == category
    end
  end

  def price_per_square_foot
    price_per_foot = price.to_f / @area.to_f
    price_per_foot.round(2)
  end

  def rooms_sorted_by_area
  end

end
