class SalesController < ApplicationController
  def index
    # make your sales objects available to the correlating view here
        total_sales_instance = TotalSales.new('app/models/sales.csv')
        @sale = total_sales_instance.sales
 #       @employees = Load.load_csv('app/models/employee_payroll.csv', 'app/models/sales.csv')
  end
end
