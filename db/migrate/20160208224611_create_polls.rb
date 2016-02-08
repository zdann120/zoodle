class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :uuid
      t.integer :maxchoices
      t.string :label
      t.string :email

      t.timestamps
    end
  end
end
