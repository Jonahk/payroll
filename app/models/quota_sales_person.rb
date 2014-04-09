class QuotaSalesPerson < Employee
  attr_reader :bonuses, :quota

  def initialize(information, sales)
    super(information, sales)

    @bonuses = information["bonuses"].to_f
    @quota = information["quota"].to_f
    @personal_sales = sales.personal_sales(@last_name)
    
  end

  def bonus
    if @personal_sales >= @quota
      @bonuses
    else
      0
    end
  end

  def gross_salary
    @salary.to_f / 12 + bonus
  end  
end