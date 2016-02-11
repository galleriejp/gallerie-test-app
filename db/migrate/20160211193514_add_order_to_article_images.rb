class AddOrderToArticleImages < ActiveRecord::Migration
  def change
    add_column :article_images, :order, :integer
  end
end
