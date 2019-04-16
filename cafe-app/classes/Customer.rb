class Customer
  attr_reader :first_name, :last_name, :email

  def initialize(first_name, last_name, date_of_birth, email)
    @first_name = first_name
    @last_name = last_name
    @date_of_birth = Date.strptime(date_of_birth, "%d/%m/%Y")
    @email = email
  end
end
