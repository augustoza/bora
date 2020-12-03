class AddCategoryToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :category, :string
  end
end
