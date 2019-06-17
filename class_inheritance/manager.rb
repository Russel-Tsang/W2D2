require_relative 'employee'

class Manager < Employee 
  attr_accessor :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    total_salary = 0
    self.employees.each { |employee| total_salary += employee.salary }
    total_salary * multiplier
  end

  def add_employees(employee)
    @employees << employee
  end
end
