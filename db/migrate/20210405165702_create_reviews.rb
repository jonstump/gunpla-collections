class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :content_body
      t.integer :user_id
      t.integer :gunpla_id

      t.timestamps
    end
  end
end
