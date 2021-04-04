class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :affiliate_id
      t.string :name
      t.string :purchasable_type
      t.integer :purchasable_id

      t.timestamps
    end
  end
end
