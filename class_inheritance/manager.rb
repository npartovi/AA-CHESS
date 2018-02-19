require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    total_salary = 0
    employees.each do |employee|
      total_salary += employee.salary
    end

    total_salary * multiplier
  end

end
