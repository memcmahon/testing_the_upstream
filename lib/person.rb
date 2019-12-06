class Person
  attr_reader :name, :dishes

  def initialize(name)
    @name = name
    @dishes = []
  end

  def prepare(dish)
    @dishes << dish
  end

  def dish_categories
    # return Array
    # elements should be the categories of dishes prepared
    # categories = []
    #
    # @dishes.each { |dish| categories << dish.category }
    #
    # categories

    @dishes.map do |dish|
      dish.category
    end
  end
end
