class ProjectsController < ApplicationController


	def index
		# @projects = Project.order(created_at: :desc).limit(10)
		@projects = Project.last_created_projects(10)
			if @projects.empty?
				render 'index', layout: 'admin'
			end
	end
	
	# def show
	#     @project = Project.find params[:id]
	#   	rescue ActiveRecord::RecordNotFound
	#     render 'no_projects_found'
 	# end
 	
 	def show
 		#binding.pry
 	# 	#name = params[:project_id].gsub(/-/, ' ').capitalize #METODO #Probar .titulize metodo de rails
		# @project = Project.find_by params[:project_id] 
		# # if @project == nil
		# # 	render 'no_projects_found'
		# # end
		   
 		 	
 	
 		@project = Project.find_by id: params[:id]
 		if  @project 
 		else
 			render 'no_projects_found'
 		end

	   # begin
	   #      @project = Project.find params[:id]
	   #   rescue ActiveRecord::RecordNotFound
	   #  	render 'no_projects_found'
	   #  end
    end
end
