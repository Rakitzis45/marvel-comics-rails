class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :character_comic_id
      t.string :name
      t.string :post

      t.timestamps
    end
  end
end
