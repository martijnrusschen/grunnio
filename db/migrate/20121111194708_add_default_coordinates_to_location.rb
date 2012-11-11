class AddDefaultCoordinatesToLocation < ActiveRecord::Migration
  def up
    change_column_default :locations, :latitude, 53.2187
    change_column_default :locations, :longitude, 6.5670
  end

  def down
    change_column_default :locations, :latitude, nil
    change_column_default :locations, :longitude, nil
  end


end
