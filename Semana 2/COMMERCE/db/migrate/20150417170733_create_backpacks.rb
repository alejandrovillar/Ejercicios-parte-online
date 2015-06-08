class CreateBackpacks < ActiveRecord::Migration
  def change
    create_table :backpacks do |t|
      t.string :title
      t.text :color
      t.text :capacity
      t.text :pokets
      t.text :waterproof

      t.timestamps null: false
    end
  end
end
