class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.string :uuid
      t.datetime :time
      t.references :subscriber, foreign_key: true

      t.timestamps
    end
  end
end
