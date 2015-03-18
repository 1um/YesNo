class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :plus
      t.text :content
      t.integer :like_counter
      t.belongs_to :topic

      t.timestamps
    end
  end
end
