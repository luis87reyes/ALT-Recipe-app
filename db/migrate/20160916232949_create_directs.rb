class CreateDirects < ActiveRecord::Migration[5.0]
  def change
    create_table :directs do |t|
      t.string :Name
      t.text :Directions

      t.timestamps
    end
  end
end
