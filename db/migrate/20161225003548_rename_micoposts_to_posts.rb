class RenameMicopostsToPosts < ActiveRecord::Migration[5.0]
  def change
    rename_table :microposts, :posts
  end
end
