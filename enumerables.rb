module MyEnumerable
  def any?
    each { |n| return true if yield n }
    return false
  end

  def all?
    each { |n| return false if !yield n }
    return true
  end

  def filter
    res = []
    each { |n| res.push(n) if yield n}
    res
  end
end