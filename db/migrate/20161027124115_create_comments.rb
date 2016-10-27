class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :author
      t.references :commentable, plymorphic: true
      t.timestamps
    end
  end
end
