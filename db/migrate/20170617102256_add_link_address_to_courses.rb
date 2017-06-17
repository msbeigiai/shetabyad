class AddLinkAddressToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :link_address, :string
  end
end
