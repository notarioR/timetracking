Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/contact' => 'site#contact'
  # get '/projects' => 'projects#index'
  # get '/projects/:project_id' => 'projects#index'
  # get '/projects/:project_id/entries' => 'entries#index'
  # get '/projects/:project_id/entries/new' => 'entries#new'

  resources :projects do
    resources :entries
	end

end
