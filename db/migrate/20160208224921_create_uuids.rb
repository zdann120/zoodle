class CreateUuids < ActiveRecord::Migration[5.0]
  def change
    create_table :uuids do |t|
      t.string :email
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
