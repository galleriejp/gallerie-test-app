class AddOrderToArticleHeadings < ActiveRecord::Migration
  def change
    add_column :article_headings, :order, :integer
  end
end
