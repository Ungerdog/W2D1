class Employee
attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    @name, @title, @salary, @boss = name, title, salary, boss
  end

  def boss=(boss)
    @boss = boss
    boss.add_employee(self) unless boss.nil?

    boss
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
    bonus
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss = nil)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_employee(peon)
    @employees << peon

    peon
  end

  def bonus(multiplier)
    bonus = self.total_employee_salary * multiplier
    bonus
  end

  def total_employee_salary
    total_employee_salary = 0

    @employees.each do |employee|
      if employee.is_a?(Manager)
        total_employee_salary += employee.salary += employee.total_employee_salary
      else
        total_employee_salary += employee.salary
      end
    end

    total_employee_salary
  end
end

david = Employee.new("David", "TA", 10000)
shawna = Employee.new("Shawna", "TA", 12000)
darren = Manager.new("Darren", "TA Manager", 78000)
david.boss=(darren)
shawna.boss=(darren)

ned = Manager.new("Ned", "founder", 1000000)
darren.boss=(ned)


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
