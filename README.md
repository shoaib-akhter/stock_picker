# stock_picker

This Ruby script implements a **stock trading strategy** to find the best days to buy and sell for maximum profit. It takes an array of stock prices (one for each day) and returns an array `[buy_day, sell_day]` indicating the most profitable trade.

## Usage
Call `stock_picker` with an array of stock prices, and it will return the best days to trade.

## Example
```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
# Expected Output: [1,4]
```

