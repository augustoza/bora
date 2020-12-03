class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false
      t.references :reviewed_user, null: false
      t.integer :rating
      t.text :content

      t.timestamps
    end
    add_foreign_key :reviews, :users, column: :user_id, primary_key: :id
    add_foreign_key :reviews, :users, column: :reviewed_user_id, primary_key: :id
  end
end
