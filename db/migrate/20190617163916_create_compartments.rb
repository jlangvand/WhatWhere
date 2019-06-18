class CreateCompartments < ActiveRecord::Migration[5.2]
  def change
    create_table :compartments do |t|
      t.string :name
      t.integer :number
      t.integer :shelf
      t.string :comment

      t.timestamps
    end
  end
end
