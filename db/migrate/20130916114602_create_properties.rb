class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :cost
      t.integer :value
      t.integer :total
      t.decimal :roi,scale: 2

      t.timestamps
    end
  end
end
