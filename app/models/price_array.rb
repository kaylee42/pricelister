require 'pry'
class PriceArray
  attr_accessor :prices, :low_half, :high_half, :q1, :q3, :iqr

  def initialize(prices)
    @prices = prices.sort
    @low_half = prices.sort
    array_split
    get_quartiles
  end

  def average(array)
    array.reduce(:+)/array.length
  end

  def array_split
    self.low_half
    if self.low_half.length % 2 == 0
      self.high_half = low_half.pop(low_half.length/2)
    else
      self.high_half = low_half.pop((low_half.length-1)/2)
    end
  end

  def get_median(array)
    if array.length % 2 == 0
      (array[array.length/2] + array[(array.length/2)-1])/2
    else
      array[array.length/2]
    end
  end

  def get_quartiles
    self.q1 = get_median(low_half)
    self.q3 = get_median(high_half)
    self.iqr = q3 - q1
  end

  def remove_outliers
    prices.reject do |price|
      price < q1 - iqr || price > q3 + iqr
    end
  end

end
