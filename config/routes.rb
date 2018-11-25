Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope "(:locale)", locale: /en|ja/ do
    resources :users, only: [:new, :show]
    root 'welcome#index'
  end
end
