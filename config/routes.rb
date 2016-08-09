Rails.application.routes.draw do
  root 'tweets#index'
  get 'tweets' => 'tweets#index'   #ツイート一覧画面
  get 'tweets/new' => 'tweets#new'  #ツイート投稿画面の表示　newアクション
  post 'tweets'  => 'tweets#create'  #ツイートの投稿 createアクション
end
