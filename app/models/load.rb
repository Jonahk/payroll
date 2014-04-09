require 'csv'

class Load
  def self.load_csv(filename, sales_filename)
    sales = TotalSales.new(sales_filename)

    employee_list = []
    CSV.foreach(filename, headers: true) do |row|
      data = row.to_hash
      if data["job"] == 'Developer'
        employee_list << Employee.new(data, sales)
      elsif data["job"] == 'Designer'
        employee_list << Employee.new(data, sales)
      elsif data["job"] == 'Quota'
        employee_list << QuotaSalesPerson.new(data, sales)
      elsif data["job"] == 'Commission'
        employee_list << CommissionSalesPerson.new(data, sales)
      elsif data["job"] == 'Owner'
        employee_list << Owner.new(data, sales)
      end
    end
    employee_list
  end  

  def employee_list
    @employee_list
  end

  def sales_list
    @sales_list
  end
end