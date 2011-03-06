Rails.application.routes.draw do
  constraints(:id => /(\w|[\/_-])+/) do
    resources :guidelines, :only => [:index, :show]
  end
end
