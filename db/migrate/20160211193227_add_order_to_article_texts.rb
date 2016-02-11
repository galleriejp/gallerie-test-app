class AddOrderToArticleTexts < ActiveRecord::Migration
  def change
    add_column :article_texts, :order, :integer
  end
end
