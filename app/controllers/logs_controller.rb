class LogsController < ApplicationController
	def index
		@logs = Log.all.order("date DESC").decorate
	end
end
