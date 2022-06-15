Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
             path: '',
             path_names: {
               sign_up: '',
               sign_in: 'login',
               sign_out: 'logout',
               registration: "signup",
             },
             controllers: {
               sessions: 'users/sessions',
               passwords: 'users/passwords',
               registrations: 'users/registrations',
             }

  scope module: :public do
    root to: 'homes#top'
    get 'about' => 'homes#about'

    resources :post_brains, only: [:index, :show]
    resources :post_visceras, only: [:index, :show]
    resources :post_muscles, only: [:index, :show]

    get '/search' => 'searchs#search'

    resource :users, only: [:destroy]
    get 'users/mypage' => 'users#show'

    resource :informations, only: [:create] do
      get 'term' => 'informations#term'
      get 'privacy' => 'informations#privacy'
      get 'contact' => 'informations#contact'
      get 'completed' => 'informations#completed'
    end
  end
end
