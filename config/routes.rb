Rails.application.routes.draw do
  authenticate :user do
    # Place your events routes here
    post 'create_event_a', to: 'events#create_event_a'
    post 'create_event_b', to: 'events#create_event_b'
  end

  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
  # get 'welcome/index'
  # devise_for :users
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
  # # get 'events/index'
  # post 'create_event_a', to: 'events#create_event_a'
  # post 'create_event_b', to: 'events#create_event_b'
end
