Shelf::Application.routes.draw do
  root :to => "books#index"
  resources :books do
    put :check_out, :on => :member
    get :checked_out, :on => :collection
  end
end
