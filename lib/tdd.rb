class Array
  def my_uniq
    uniqs = []
    self.each { |el| uniqs << el unless uniqs.include? (el) }
    uniqs
  end

  def two_sum
    two_sum_arr = []
    (0...self.length - 1).each do |i|
      (i + 1...self.length).each do |j|
        two_sum_arr << [i, j] if self[i] + self[j] == 0
      end
    end

    two_sum_arr
  end

  def my_transpose
    transposed_arr = Array.new(length) { Array.new(length) }
    self.each_with_index do |row, i|
      row.each_with_index do |col, j|
          transposed_arr[j][i] = col
      end
    end

    transposed_arr
  end
end

def stock_picker(prices)

  max_diff = 0
  days = []

  (0...prices.length-1).each do |i|
    (i + 1 ... prices.length).each do |j|
      diff = prices[j] - prices[i]
      if (diff > max_diff)
        max_diff = diff
        days = [i, j]
      end
    end
  end
  days
end
