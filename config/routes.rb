Rails.application.routes.draw do


  #ruta normal
  # resources :posts
  # resources :comments, only: :create


  #ruta anidada,esto quiere decir que no puedo mandar un coments sin tener un ID de post asociado
  resources :posts do
    resources :comments, only: :create
  end

  root 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
