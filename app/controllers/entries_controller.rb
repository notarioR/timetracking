class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries
	end

	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params

		if @entry.save
			flash[:notice] = "Project create successfully"
			#redirect_to action: 'index', controller: 'entries', project_id: @project.id
			redirect_to project_entries_path(@project)
		else
			flash.now[:error] = "Error"
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
		binding.pry	
	end
	
	private

	
	def entry_params 
 		params.require(:entry).permit(:hours, :minutes, :datetime)
	end
end
