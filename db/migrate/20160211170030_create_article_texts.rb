class CreateArticleTexts < ActiveRecord::Migration
  def change
    create_table :article_texts do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
