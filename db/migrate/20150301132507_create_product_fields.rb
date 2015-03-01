class CreateProductFields < ActiveRecord::Migration
  def change
    create_table :product_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :product_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_fields, :product_types
  end
end
