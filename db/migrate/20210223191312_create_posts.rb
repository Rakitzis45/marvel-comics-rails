class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :character_comic_id
      t.sring :comment
      
      t.timestamps
    end
  end
end
