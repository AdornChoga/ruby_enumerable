module MyEnumerable
  def any?
    @list.each do |element|
      return true if yield element
    end
    return false
  end
end