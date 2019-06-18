class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :placement
      t.integer :count
      t.string :comment

      t.timestamps
    end
  end
end
