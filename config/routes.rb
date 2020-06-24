Rails.application.routes.draw do
  resources :booked_lecture_rooms
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"

  resources :users

end

