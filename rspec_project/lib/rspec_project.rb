
def removed_dups(arr)
  new_array = []
  arr.each do |el|
    new_array << el if !new_array.include?(el)
  end
  new_array
end

def two_sum(arr)
  answer = []
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      next if idx1 == idx2
      answer << [idx1, idx2].sort if ele1 + ele2 == 0
    end
  end
  answer.uniq
end

def my_transpose(arr)
  transposed = Array.new(arr[0].length) { Array.new }
  arr.each_with_index do |ele1, idx1|
    ele1.each_with_index do |ele2, idx2|
      row_idx = idx2
      transposed[row_idx] << arr[idx1][idx2]
    end
  end
  transposed
end

def stock_picker(arr)
  best_price = 0
  best_days = []
  arr.each.with_index do |price1, buy_day|
    (buy_day + 1...arr.length).each do |sell_day|
      price2 = arr[sell_day]
      profit = price2 - price1
      if profit > best_price
        best_price = profit
        best_days  = [buy_day, sell_day]
      end
    end
  end
  best_days
end
