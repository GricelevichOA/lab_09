class LogDecorator < Draper::Decorator
  delegate_all

  def display_log
  	return "User #{user_login} changed type to #{user_type} at #{date}"
  end
end
