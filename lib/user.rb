class User
  attr_accessor :email, :age
  @@user_all = []

  def initialize(email_user, age_user)
    @email = email_user
    @age = age_user
    @@user_all << self
  end

  def self.all
    return @@user_all
  end

  def self.find_by_email(input)
    return @@user_all.select{|user| user.email==input}
  end
end
