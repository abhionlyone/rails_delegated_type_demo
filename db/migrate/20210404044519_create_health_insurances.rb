class CreateHealthInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :health_insurances do |t|
      t.integer :max_limit

      t.timestamps
    end
  end
end
