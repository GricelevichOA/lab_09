class UserDecorator < Draper::Decorator
  delegate_all
  def display_user
  	return "User #{username} is a #{type}"
  end
end
