module SetIntervals

  def self.intervals(list)
    # should contain unless one item, contain only integer and be ordered
    if list.empty? || self.only_integer?(list) || !self.ordered_list?(list)
      return false
    else
      return split_(list)
    end
  end

  def self.only_integer?(list)
    !list.all? {|i| i.is_a?(Integer) }
  end

  def self.ordered_list?(list)
    list.sort === list
  end

  def self.split_(list)
    result = []
    new_item = true
    for i in 0...list.size
      if new_item
        result << list[i]
        new_item = false
      end
      if (list[i+1] != list[i]+1) && list[i+1] != nil
        result << list[i]
        new_item = true
      end
    end
    result
  end

end
