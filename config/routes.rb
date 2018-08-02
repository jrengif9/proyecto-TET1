Rails.application.routes.draw do
  get 'position/getPosition', as: 'get_Position'
  get 'position/save'
  get 'position/show'
  devise_for :users

  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
