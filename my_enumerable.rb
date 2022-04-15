module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    return unless block_given?

    response = true
    list.each do |e|
      response = false unless yield e
    end
    response
  end

  def any?
    return unless block_given?

    response = false
    list.each do |e|
      response = true if yield e
    end
    response
  end

  def filter
    return unless block_given?

    arr = []
    list.each do |e|
      arr.push(e) if yield e
    end
    arr
  end
end
