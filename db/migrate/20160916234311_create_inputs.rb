class CreateInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :inputs do |t|
      t.string :name
      t.text :directions

      t.timestamps
    end
  end
end
