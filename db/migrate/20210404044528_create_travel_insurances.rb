class CreateTravelInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :travel_insurances do |t|
      t.string :target_country

      t.timestamps
    end
  end
end
