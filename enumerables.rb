module MyEnumerable
  def any?
    @list.each do |element|
      return true if yield element
    end
    return false
  end

  def all?
    @list.each do |element|
      return false if yield element
    end
    return true
  end

  def filter
    res = []
    each { |n| res.push(n) }
    res
  end
end