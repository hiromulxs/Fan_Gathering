Rails.application.routes.draw do

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

    resources :community, only: [:new, :index, :show, :edit]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
