Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope "(:locale)", locale: /en|ja/ do
    resources :users, only: [:create, :show]
    get '/signup' => "users#new"
    
    root 'welcome#index'
  end

end
