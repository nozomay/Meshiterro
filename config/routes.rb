Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
   resources :post_comments, only: [:create, :destroy]
    #post_imagesと親子関係（ネストするという）
  end
end