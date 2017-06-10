class AddIndexToTable < ActiveRecord::Migration[5.0]
  def change
    add_index :blogs, :title_url
  end
end
