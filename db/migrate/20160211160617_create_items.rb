class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :oder
      t.integer :user_id
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
