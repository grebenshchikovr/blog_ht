class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    t.text :link
    t.text :description

    t.timestamps
    end
  end
end
