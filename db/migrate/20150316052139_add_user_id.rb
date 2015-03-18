class AddUserId < ActiveRecord::Migration
  def change
  	add_column :topics, :user_id, :integer
  	add_column :answers, :user_id, :integer
  end
end
