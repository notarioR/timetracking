module ProjectsHelper

	def total_month
	total_hours = 0
	total_minutes = 0
	 	@entries.current_month.each do |entry|
		 	total_hours += entry.hours.to_i
			total_minutes += entry.minutes.to_i
	 	end
 		totaly = total_hours.to_i + (total_minutes.to_i/60)
 	end
 end
