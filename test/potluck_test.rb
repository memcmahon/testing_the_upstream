require 'minitest/autorun'
require 'pry'
require './lib/dish'
require './lib/person'
require './lib/potluck'

class PotluckTest < Minitest::Test
  def setup
    @dish1 = Dish.new("Couscous Salad", :appetizer)
    @dish2 = Dish.new("Scotcheroos", :dessert)
    @dish3 = Dish.new("Pizza", :main)
    @dish4 = Dish.new("Broccoli", :side)
    @dish5 = Dish.new("Cheese and Crackers", :appetizer)
    @dish6 = Dish.new("Rolls", :side)
    @dish7 = Dish.new("Snickerdoodles", :dessert)
    @person1 = Person.new('Clarisa')
    @person1.prepare(@dish1)
    @person1.prepare(@dish4)
    @person2 = Person.new('Dolly')
    @person2.prepare(@dish2)
    @person2.prepare(@dish7)
    @person2.prepare(@dish3)
    @person3 = Person.new('Jim')
    @person3.prepare(@dish5)
    @person3.prepare(@dish6)
    @person4 = Person.new('Vince')
    @potluck = Potluck.new({
      date: '12-12-19',
      location: 'Maple Grove',
      attendees: [@person1, @person2, @person3],
      })
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_it_has_attributes
    assert_equal '12-12-19', @potluck.date
    assert_equal 'Maple Grove', @potluck.location
    assert_equal [@person1, @person2, @person3], @potluck.attendees
  end

  def test_it_can_list_dish_names
    expected = [
      "Couscous Salad",
      "Broccoli",
      "Scotcheroos",
      "Snickerdoodles",
      "Pizza",
      "Cheese and Crackers",
      "Rolls",
    ]
    assert_equal expected, @potluck.dishes
  end
end
