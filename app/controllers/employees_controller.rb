

class EmployeesController < ApplicationController
  def index
    # make your employee objects available to the correlating view here
    @employees = Load.load_csv('app/models/employee_payroll.csv', 'app/models/sales.csv')
  end
end

