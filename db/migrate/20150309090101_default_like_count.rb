class DefaultLikeCount < ActiveRecord::Migration
  def change
  	change_column :topics, :like_counter, :integer, default:0
  end
end
