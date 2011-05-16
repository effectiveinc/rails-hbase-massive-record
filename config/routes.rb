KwisatzMassive::Application.routes.draw do

  resources :links, :only => [ :new, :show, :create ]
  match "/:id" => "links#show", :as => :short_code
  root :to => "links#new"

end
