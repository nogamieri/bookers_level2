Rails.application.routes.draw do
  root 'homes#top'
  # get 'homes/top'
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

 	resources :users, only:[:show, :edit]
 	# resources :post_images, only: [:new, :create, :index, :show] 予備で残してる

 	patch 'users/:id' => 'users#update' ,as: 'update_user'

 	post 'books' => 'books#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
