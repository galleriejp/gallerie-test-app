class CreateArticleHeadings < ActiveRecord::Migration
  def change
    create_table :article_headings do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
