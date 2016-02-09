class ModifyPollTable < ActiveRecord::Migration[5.0]
  def change
  	change_table :polls do |t|
	  t.rename :maxchoices, :expire_in_days
	  t.column :description, :text
	  t.column :closed, :boolean, default: false
	end
  end
end
