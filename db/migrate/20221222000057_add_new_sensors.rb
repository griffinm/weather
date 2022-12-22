class AddNewSensors < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :chloe_temp, :float
    add_column :events, :chloe_humidity, :float

    add_column :events, :aubrey_temp, :float
    add_column :events, :aubrey_humidity, :float

    add_column :events, :master_temp, :float
    add_column :events, :master_humidity, :float

    add_column :events, :mallory_office_temp, :float
    add_column :events, :mallory_office_humidity, :float
  end
end
