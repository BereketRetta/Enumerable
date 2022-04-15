require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while @list[i]
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
print(list.all? { |e| e < 5 })
print "\n"
print(list.all? { |e| e > 5 })
print "\n"
print(list.any? { |e| e == 2 })
print "\n"
print(list.any? { |e| e == 5 })
print "\n"
print(list.filter(&:even?))
