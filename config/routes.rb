Rails.application.routes.draw do
  #Time Log Routes
  get '/time_logs/index' => 'time_logs#index'

  get '/time_logs/new' => 'time_logs#new'
  post '/time_logs/' => 'time_logs#create'

  get '/' => 'time_logs#show'
  get '/time_logs/:id' => 'time_logs#show'

  get '/time_logs/:id/edit' => 'time_logs#edit'
  patch '/time_logs/:id' => 'time_logs#update'

  delete '/time_logs/:id/delete' => 'time_logs#destroy'

  patch '/time_logs/:id/end' => 'time_logs#end_task'
  #================================================
  #Sprint Routes
  get '/' => 'sprints#index'

  get '/sprints/new' => 'sprints#new'
  post '/sprints/' => 'sprints#create'

  get '/sprints/:id' => 'sprints#show'

  get '/sprints/:id/edit' => 'sprints#edit'
  patch '/sprints/:id' => 'sprints#update'

  delete '/sprints/:id/delete' => 'sprints#destroy'
  #================================================
  #Sessions Routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end