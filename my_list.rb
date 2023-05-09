# Import my_enumerable.rb
require_relative './my_enumerable'

# Create MyList class
class MyList
  # Use MyEnumerable module
  include MyEnumerable
  def initialize(list)
    # Instance variable @list
    @list = list
  end

  # Yields succesive members of the list and uses MyEnumerable module
  def each(&block)
    @list.each { |y| block.call(y) }
  end
end
