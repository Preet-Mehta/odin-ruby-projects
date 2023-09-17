# frozen_string_literal: true

def stock_picker(prices)
  profit = 0
  buy = prices.shift

  prices.each do |price|
    if price <= buy
      buy = price
    else
      profit = [profit, price - buy].max
    end
  end

  profit
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
p stock_picker([7, 6, 4, 3, 1])
p stock_picker([7, 1, 5, 3, 6, 4])
