Rails.application.routes.draw do
  root to: "pages#home"
  match "webhooks/person_changed", to: "webhooks#person_changed", via: :post
end
