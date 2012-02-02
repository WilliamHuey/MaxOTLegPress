MaxOTLegPress::Application.routes.draw do


  get "pages/home"
  post "pages/results"

  root :to => "pages#home"
end
