TechReviewSite::Application.routes.draw do
  root "top#index"
  get "top" => "top#index"
  get 'search' => 'top#search' #なんでtopのsearchメソッドなの???
  get "products/:id" => "products#show"
  post 'entry/:product_id' => 'top#post' #なぜここのidは、:product_idなのか??

  #なぜ、collection do と書くのですか??
  resources :works, :only => [:index] do
    collection do
      get :initial_scraping
      get :first_scraping
      get :second_scraping
      get :third_scraping
    end
  end
  #追加するアクションを member ブロック又は collection ブロック内に記述します。この2つのブロックの違いは member ブロックの方は特定のデータを対象としたアクションを記述し、collection ブロックには全てのデータを対象としたアクションを記述します。


end
