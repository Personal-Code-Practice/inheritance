# a manager can do everything that an employee can do, and they can also send reports
# def send_report
# puts send the report
# end



class Employee
  attr_reader :first_name, :last_name, :salary, :active
  # def first_name
  #   @first_name
  # end
  # employee1.first_name
  attr_writer :first_name, :last_name, :active
  # def first_name=(fn)
  #   @first_name = fn
  # end
  # employee1.first_name = "something"
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes #{salary} per year"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def fire
    @active = false
  end
end


# explicit version
employee1 = Employee.new({:first_name => "Majora",
                         :last_name => "Carter",
                         :salary => 80000,
                         :active => true})

# employee1.print_info

# "real life" version
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)

# employee2.print_info
# p employee2.first_name
# employee2.first_name = "Jones"
# p employee2.first_name

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts 'sending the report.....'
    # some code that actually sends the report
    puts 'totally just sent that report'
  end

  def give_all_raises
    # get all of my employees
    @employees.each do |employee|
      # give `each` of them a raise
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    # get all of my employees
    @employees.each do |employee|
      employee.fire
    end


  end
end

manager1 = Manager.new({:first_name => "Manny",
                         :last_name => "Manning",
                         :salary => 800000,
                         :active => true,
                         :employees => [employee1, employee2]})

# p manager1
manager1.fire_all_employees
p manager1.first_name
