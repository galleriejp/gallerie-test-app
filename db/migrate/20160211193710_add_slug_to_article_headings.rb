class AddSlugToArticleHeadings < ActiveRecord::Migration
  def change
    add_column :article_headings, :slug, :string
  end
end
