require 'minitest/autorun'
require 'pry'
require './lib/dish'
require './lib/person'

class PersonTest < Minitest::Test
  def setup
    @dish1 = Dish.new("Couscous Salad", :appetizer)
    @dish2 = Dish.new("Scotcheroos", :dessert)
    @person1 = Person.new('Clarisa')
  end

  def test_it_exists
    assert_instance_of Person, @person1
  end

  def test_it_has_attributes
    assert_equal 'Clarisa', @person1.name
  end

  def test_it_starts_with_no_dishes
    assert_equal [], @person1.dishes
  end

  def test_it_can_add_dishes
    @person1.prepare(@dish1)
    @person1.prepare(@dish2)

    assert_equal [@dish1, @dish2], @person.dishes
  end

  # Create a test to follow this interaction pattern:
  # pry(main)> clarisa.dish_categories
  # #> [:appetizer, :dessert]
end
