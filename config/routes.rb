Rails.application.routes.draw do

  get '/comments/:id', to: 'comments#comments'
  post '/comments', to: 'comments#create'
  
end
