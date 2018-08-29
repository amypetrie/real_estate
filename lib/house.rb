require 'pry'

class House

  attr_reader :address, :price_string, :rooms

  def initialize(price_string, address_string)
    @price_string = price_string
    @address = address_string
    @rooms = []
  end

  def price
    price_array = @price_string.chars
    price_array.delete_if do |price_char|
      price_char == "$"
    end
    price_array.join("").to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.keep_if do |room|
      room.category == category
    end
  end

  def area
    area_array = @rooms.map do |room|
      room.area
    end
  end
  
end
