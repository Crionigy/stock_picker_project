def stock_picker(stock)
  price = {}

  stock.each_with_index do |item1, index1|
    stock.each_with_index do |item2, index2|
      if index2 > index1
        price[[index1, index2]] = item2 - item1
      end
    end
  end

  price = price.sort_by { |k, v| v }

  max_profit = price[-1]

  puts "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for the maximum profit of #{max_profit[1]}$"
end

stock_picker([17,3,6,9,15,8,6,1,10])
