class User < ActiveRecord::Base
	establish_connection "#{RAILS.env}_extranet"
		
end