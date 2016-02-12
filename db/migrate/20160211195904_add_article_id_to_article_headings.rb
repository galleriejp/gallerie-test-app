class AddArticleIdToArticleHeadings < ActiveRecord::Migration
  def change
    add_column :article_headings, :article_id, :integer
  end
end
