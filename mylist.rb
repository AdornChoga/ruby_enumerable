require_relative './enumerables.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    for n in @list do
      yield n
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
#=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts list.all? {|e| e < 5}
#=> true
puts list.all? {|e| e > 5}
#=> false

# Test #any?
puts list.any? {|e| e == 2}
#=> true
puts list.any? {|e| e == 5}
#=> false

# Test #filter
print list.filter {|e| e.even?}
#=> [2, 4]