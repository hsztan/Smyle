class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :start_time
      t.string :notes
      t.integer :smyler_id
      t.integer :hearo_id

      t.timestamps
    end
  end
end
