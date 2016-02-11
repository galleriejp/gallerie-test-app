class RemoveOdreFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :oder, :string
  end
end
