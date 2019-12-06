class Person
  attr_reader :name, :dishes

  def initialize(name)
    @name = name
    @dishes = []
  end

  def prepare(dish)
    @dishes << dish
  end
end
