class DropUuidsTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :uuids
  end
end
