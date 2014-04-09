class Employee



  TAX_RATE = 0.30

  attr_reader :first_name, :last_name, :job, :salary

  def initialize(information, sales)

    @first_name = information["first_name"]
    @last_name = information["last_name"]
    @job = information["job"]
    @salary = information["salary"].to_f
  end

  def gross_salary
    @salary.to_f / 12
  end

  def taxes
    gross_salary * TAX_RATE
  end

  def net_pay
    gross_salary - taxes
  end
end