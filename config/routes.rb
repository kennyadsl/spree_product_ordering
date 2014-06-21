# Put your extension routes here.
Rails.application.routes.draw do
  namespace :admin do
    resources :products, :collection => { :reorder => :any, :order_products => :any }, :has_many => [:product_properties, :images] do
      resources :variants 
      resources :option_types, :member => {:select => :get, :remove => :get}, :collection => {:available => :get, :selected => :get}
      resources :taxons, :member => {:select => :post, :remove => :post}, :collection => {:available => :post, :selected => :get}
    end
  end
end
