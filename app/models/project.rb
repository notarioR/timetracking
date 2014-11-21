class Project < ActiveRecord::Base

	has_many :entries #relaciones

	validates :name, uniqueness: true
	validates :name, presence: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[a-zA-Z0-9\s]*\z/}

	def self.iron_find(id) #Metodo de clase
		Project.where("id = ?", id).first
	end

	def self.iron_find_easy(id) #Metodo de clase
		Project.where(project_id: id).first! #Version with exception
	end

	def self.batch_delete(names) #Metodo de clase
		num_delete = 0
		names.each do |name|
			if p = where(name: name).first
				p.destroy
			end
			num_delete += 1
		end
		puts "Elemts delete #{num_delete}"
	end

	def upcase_name! #Metodo de instancia
		self.name = self.name.upcase!
		save
	end

	def self.last_created_projects(projects) #Metodo de clase
		order(created_at: :desc).limit(projects)
	end

	def total_hours_in_month(year,month)
		total_hours = 0
		total_minutes = 0

		begining_of_month = Date.new(year, month, 1)
		end_month = begining_of_month.end_of_month

		entries.where("datetime > ? AND datetime < ?", begining_of_month, end_month).each do |entry|
			total_hours += entry.hours.to_i
			total_minutes += entry.minutes.to_i
		end
		total_hours + (total_minutes/60)
		total_hours
	end
end
