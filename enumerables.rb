module MyEnumerable
  def any?
    each { |n| return true if yield n }
    false
  end

  def all?
    each { |n| return false unless yield n }
    true
  end

  def filter
    res = []
    each { |n| res.push(n) if yield n }
    res
  end
end
