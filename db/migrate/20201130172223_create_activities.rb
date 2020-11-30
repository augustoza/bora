class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.datetime :initial_date
      t.datetime :final_date
      t.string :location
      t.text :description
      t.string :coordinates
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
