require 'csv'

class TotalSales

  attr_reader :sales

  def initialize(filename)
    @sales = Hash.new

    CSV.foreach(filename, headers: true) do |row|
      last_name = row["last_name"]
      gross_sale_value = row["gross_sale_value"] 
      if !@sales.keys.include?(last_name)
        @sales[last_name] = []
      end
      @sales[last_name] << gross_sale_value.to_f

    end
  end

  def total_sales
    sum = 0
    @sales.each do |lastname, amount|
      sum += amount.inject(:+)
    end
    sum   
  end

  def personal_sales(last_name)
    personal_sum = 0
    @sales.each do |k,v|
      personal_sum += v.inject(:+)
    end
    personal_sum
  end
end

# array  with amount of sales
# sales.map{|sale| sale.amount}