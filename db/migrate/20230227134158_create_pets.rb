class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :species
      t.integer :age
      t.string :gender
      t.text :description
      t.text :special_notes
      t.integer :price

      t.timestamps
    end
  end
end
