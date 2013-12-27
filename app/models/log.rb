class Log < ActiveRecord::Base
	validates_presence_of :company_name, :individual_name, :email
end