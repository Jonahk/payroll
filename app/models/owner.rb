class Owner < Employee
  attr_reader :bonuses, :quota

  def initialize(information, sales)
    super(information, sales)

    @total_sales = sales.total_sales
    @bonuses = information["bonuses"].to_f
    @quota = information["quota"].to_f
  end

  def bonus
    if @total_sales >= @quota
      @bonuses
    else
      0
    end
  end

  def gross_salary
    @salary.to_f / 12 + bonus
  end  
end