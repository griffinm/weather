class ChangeIndoorTempToGriffinOffice < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :indoor_temperature, :griffin_office_temp
    rename_column :events, :indoor_humidity, :griffin_office_humidity
  end
end
