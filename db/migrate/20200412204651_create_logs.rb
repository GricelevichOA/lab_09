class CreateLogs < ActiveRecord::Migration[5.2]
  	def change
	    create_table :logs do |t|
	    	t.string :user_login
	    	t.string :user_type
	    	t.datetime :date

	    	t.timestamps
	    end
  	end
end
