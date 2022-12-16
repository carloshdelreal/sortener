Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :urls, only: [:create, :index, :show]
  
  get '/:sorted_url', to: 'sortener#sortener'
end
