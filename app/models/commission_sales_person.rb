class CommissionSalesPerson < Employee
  attr_reader :commission

  def initialize(information, sales)
    super(information, sales)
    @commission = information["commission"].to_f
    @personal_sales = sales.personal_sales(@last_name)
  end

  def commission
    @personal_sales * @commission
  end

  def gross_salary
    @salary.to_f / 12 + commission
  end  
end