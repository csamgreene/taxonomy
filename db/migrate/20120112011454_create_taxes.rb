class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :term
      t.text :description
      t.integer :parent

      t.timestamps
    end
  end
end
