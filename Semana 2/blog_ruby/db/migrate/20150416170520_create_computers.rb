class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :title
      t.text :brand
      t.text :model
      t.text :processor_brand
      t.text :ram_size_GB
      t.text :price

      t.timestamps null: false
    end
  end
end
