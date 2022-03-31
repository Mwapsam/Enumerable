module MyEnumerable
  # The method returns true if the block never returns false or nil.
  def all?
    each do |e|
      return false unless yield e
    end
    true
  end

  def any?
    each do |e|
      return true if yield e
    end
    false
  end

  # Returns an array containing all elements of enum for which the given block returns a true value.
  def filter
    result = []
    each do |e|
      result.push(e) if yield e
    end
    result
  end
end
