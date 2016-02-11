class CreateArticleImages < ActiveRecord::Migration
  def change
    create_table :article_images do |t|
      t.string :file
      t.string :source

      t.timestamps null: false
    end
  end
end
