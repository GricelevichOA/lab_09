class LogService
	def initialize(params)
		@id = params[:id]		
		@username = params[:username]
		@type = params[:type]
	end

	def create_log
		Log.create(log_params)
	end
end

private

def log_params
	{
		user_login: @username,
		user_type: @type,
		date: DateTime.now
	}
end