prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  min_price_day = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, day|
    if price < prices[min_price_day]
      min_price_day = day
    end

    potential_profit = price - prices[min_price_day]
    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [min_price_day, day]
    end
  end

  best_days
end

p stock_picker(prices)