# Stock Picker in Ruby
# This function finds the best days to buy and sell stocks for maximum profit.
# It takes an array of stock prices where the index represents the day.
# Returns an array [buy_day, sell_day] that yields the highest profit.

# Optimized O(n) Solution
def stock_picker(prices)
    min_price = Float::INFINITY  # Initialize the minimum price as a very high number
    min_day = 0  # The day corresponding to min_price
    max_profit = 0  # Stores the maximum profit found
    best_days = []  # Stores the best [buy_day, sell_day]
  
    prices.each_with_index do |price, day|
      # Update min_price if a lower price is found
      if price < min_price
        min_price = price
        min_day = day
      end
  
      # Calculate profit if selling on the current day
      profit = price - min_price
      
      # Update max_profit and best_days if a better profit is found
      if profit > max_profit
        max_profit = profit
        best_days = [min_day, day]  # Store the best buy/sell days
      end
    end
  
    # Return result or a message if no profit is possible
    max_profit > 0 ? best_days : "No profitable trade possible"
  end  
  
  # Test Cases
  if __FILE__ == $0
    puts stock_picker([17,3,6,9,15,8,6,1,10])  # Expected Output: [1,4]
    puts stock_picker([10,5,3,8,11,9,1,6])  # Expected Output: [2,4]
    puts stock_picker([3,2,6,5,0,3])  # Expected Output: [4,5]
    puts stock_picker([7,6,4,3,1])  # Expected Output: [] (No profit possible)
  end  