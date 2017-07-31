module SetIntervals
  def self.intervals(list)
    if list.empty? || self.only_integer?(list)
      return false
    else
      return true
    end
  end

  def self.only_integer?(list)
    false
  end
end
