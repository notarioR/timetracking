class Entry < ActiveRecord::Base
	belongs_to :project

	validates :hours, :presence => {:message => "Custom Errors"}
	validates :minutes, presence: true
	validates :datetime, presence: true
	
	def self.current_month
		begining_of_month = Date.new(2014, 11, 1)
		end_month = begining_of_month.end_of_month
		where("datetime > ? AND datetime < ?", begining_of_month, end_month)	
	end

end
