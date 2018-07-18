Rails.application.routes.draw do
	namespace :api do
		resources :products, only: %i[index]
		resources :toppings, only: %i[index]
		post "/orders/perform" => "orders#perform"
	end
end
