Rails.application.routes.draw do
root "wines#new"
resources :wines
resources :assemblies
resources :strains
resources :enologists
resources :magazines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
