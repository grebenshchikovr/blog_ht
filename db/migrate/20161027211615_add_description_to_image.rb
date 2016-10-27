class AddDescriptionToImage < ActiveRecord::Migration
  def change
    add_column :images, :desription, :text
  end
end
