GemExpo::Application.routes.draw do
  resources :login_pages
  root "login_pages#index"  #come to http://localhost:3000/
  match ':controller(/:action(/:id))', :via => [:get,:post]
end
