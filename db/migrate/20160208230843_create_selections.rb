class CreateSelections < ActiveRecord::Migration[5.0]
  def change
    create_table :selections do |t|
      t.references :subscriber, foreign_key: true
      t.references :choice, foreign_key: true

      t.timestamps
    end
  end
end
