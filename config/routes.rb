Taxonomy::Application.routes.draw do

  resources :nodes

  # routes to RuoteKit
  match '/_ruote' => RuoteKit::Application
  match '/_ruote/*path' => RuoteKit::Application
end