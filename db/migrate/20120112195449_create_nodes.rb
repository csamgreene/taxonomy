class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :term
      t.text :description
      t.string :parent

      t.timestamps
    end
  end
end
