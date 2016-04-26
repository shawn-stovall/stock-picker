=begin
  Method that picks the best buy and
  sell days for a stock, to maximize
  profit.
=end
def stock_picker(days)
  buy_day = 0
  sell_day = 1
  highest_sell = days[1] - days[0]

  days.each_with_index do |b_value, b_day|                   # Go through every day
    days.drop(b_day + 1).each_with_index do |s_value, s_day| # Compare it to remainding days
      hs = s_value - b_value
      if hs > highest_sell                 # If new highest sells price is found:
        buy_day      = b_day               # Set buy_day      to current buy day
        sell_day     = s_day + (b_day + 1) # Set sell_day     to current sell day
        highest_sell = hs                  # Set highest_sell to current sells price
      end
    end
  end

  return [buy_day, sell_day]
end
        
