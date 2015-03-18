class DefaultLikeCountAnswer < ActiveRecord::Migration
  def change
  	change_column :answers, :like_counter, :integer, default:0
  end
end
