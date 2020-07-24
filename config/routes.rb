Rails.application.routes.draw do
  get '/', to: 'static_pages#index', as: "home"
  get '/payment', to: 'static_pages#payment', as: "payment"
  get '/trips', to: 'static_pages#trips', as: "trips"
  get '/photo_archive/:id', to: 'static_pages#photo_archive', as: "photo_archive"
  get '/about', to: 'static_pages#about', as: "about"
  get '/contact', to: 'static_pages#contact', as: "contact"
  get '/officers', to: 'static_pages#officer', as: "officer"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
