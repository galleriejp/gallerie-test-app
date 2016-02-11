class AddSlugToArticleImages < ActiveRecord::Migration
  def change
    add_column :article_images, :slug, :string
  end
end
