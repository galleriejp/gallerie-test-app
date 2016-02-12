class AddArticleIdToArticleTexts < ActiveRecord::Migration
  def change
    add_column :article_texts, :article_id, :integer
  end
end
