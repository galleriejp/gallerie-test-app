class AddSlugToArticleTexts < ActiveRecord::Migration
  def change
    add_column :article_texts, :slug, :string
  end
end
