class AddSolarRadiationToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :solar_radiation, :float
  end
end
