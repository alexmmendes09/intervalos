module SetIntervals
  def self.intervals(list)
    # should contain unless one item, contain only integer and be ordered
    if list.empty? || self.only_integer?(list) || self.ordered_list?(list)
      return false
    else
      return true
    end
  end

  def self.only_integer?(list)
    !list.all? {|i| i.is_a?(Integer) }
  end
  def self.ordered_list?(list)
    list.sort == list
  end
end
