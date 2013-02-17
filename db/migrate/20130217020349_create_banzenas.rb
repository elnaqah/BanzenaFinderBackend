class CreateBanzenas < ActiveRecord::Migration
  def change
    create_table :banzenas do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :telephone
      t.float :longitude
      t.float :latitude
      t.boolean :has_80?
      t.boolean :has_90?
      t.boolean :has_92?
      t.boolean :has_95?
      t.boolean :has_gas?
      t.boolean :has_solar?
      t.integer :counter_80
      t.integer :counter_90
      t.integer :counter_92
      t.integer :counter_95
      t.integer :counter_gas
      t.integer :counter_solar

      t.timestamps
    end
  end
end
