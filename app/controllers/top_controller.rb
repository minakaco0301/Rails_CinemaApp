class TopController < ReviewController
  def index
    #@productsというのは、indexアクションで一覧を表示するから複数系にしている！その他のshowやnewなどは、一覧の取得ではないので、「.new」をしてインスタンスを生成する！！！
    @products = Product.order("id ASC").limit(20)
  end
end
