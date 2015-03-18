class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :content
      t.integer :like_counter

      t.timestamps
    end
  end
end
