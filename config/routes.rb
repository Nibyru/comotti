Comotti::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, path: "users", path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    registration: 'register',
    sign_up: 'sign_up'
  }, controllers: { sessions: "sessions", registrations: "registrations" }

  get 'empresa' => 'site#empresa', as: :empresa
  get 'productos' => 'site#products', as: :products
  get 'promociones' => 'site#promos', as: :promos
  get 'contacto' => 'site#contact', as: :contact

  root 'site#index'
end
