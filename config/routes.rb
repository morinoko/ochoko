Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope "(:locale)", locale: /en|ja/ do
    resources :users, only: [:create, :show] do
      resources :tasting_notes
    end
    
    resources :breweries
    resources :sakes
      
    # Signup/Login
    get '/signup' => "users#new"
    get '/login' => "sessions#new"
    post '/login' => "sessions#create"
    delete '/logout' => "sessions#destroy"
    get '/auth/facebook/callback' => 'sessions#create'
    
    root 'welcome#index'
  end

end
