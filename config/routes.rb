Taxonomy::Application.routes.draw do

  resources :nodes

  match 'flows' => 'flows#index'
  match 'flows/:id' => 'flows#launch', :as => :launch_flow, :via => :post

  match 'work/:username' => 'work#index', :as => :work
  match 'work/:username/:id' => 'work#update', :as => :workitem_update, :via => :post
  match 'work/:username/:id' => 'work#show', :as => :workitem

  # routes to RuoteKit
  match '/_ruote' => RuoteKit::Application
  match '/_ruote/*path' => RuoteKit::Application
end