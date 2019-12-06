class Potluck
  attr_reader :date, :location, :attendees

  def initialize(potluck_details)
    @date = potluck_details[:date]
    @location = potluck_details[:location]
    @attendees = potluck_details[:attendees]
  end

  def dishes
    dish_names = []
    @attendees.each do |person|
      person.dishes.each do |dish|
        dish_names << dish.name
      end
    end
    dish_names
  end
end
