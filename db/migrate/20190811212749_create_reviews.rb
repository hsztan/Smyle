class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :content
      t.integer :smyler_id
      t.integer :hearo_id

      t.timestamps
    end
  end
end
