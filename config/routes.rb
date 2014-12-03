Comotti::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: [:registrations] , path: "users", path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    registration: 'register'
  }, controllers: { sessions: "sessions", registrations: "registrations" }

  get 'empresa' => 'site#empresa', as: :empresa
  get 'productos' => 'site#products', as: :products
  get 'promociones' => 'site#promos', as: :promos
  get 'contacto' => 'site#contact', as: :contact
  get 'product/:id' => 'site#show_product'
  resource :messages, only: [:create]

  root 'site#index'
end
