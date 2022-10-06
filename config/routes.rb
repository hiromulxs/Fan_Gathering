Rails.application.routes.draw do

  namespace :public do
    get 'afterglows/index'
    get 'afterglows/new'
    get 'afterglows/show'
    get 'afterglows/edit'
  end
  namespace :public do
    get 'events/index'
    get 'events/new'
    get 'events/show'
    get 'events/edit'
  end
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
   scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'

    resources :users, only: [:show, :edit, :update]
    get '/users/:id/withdraw' => 'users#withdraw', as: 'withdraw_user'
    patch "/users/:id/withdrawal" => "users#withdrawal", as: "withdrawal_user"

    resources :community, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      resources :main_posts, only: [:create, :show, :destroy] do
        resources :main_comments, only: [:create, :destory]
      end
      resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
        resources :event_comments, only: [:create, :destroy]
      end
      resources :calendars, only: [:index, :new, :create, :show, :edit, :update, :destroy] do

      end
      resources :afterglows, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
        resources :afterglow_comments, only: [:create, :destroy]
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
