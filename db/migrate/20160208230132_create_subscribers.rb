class CreateSubscribers < ActiveRecord::Migration[5.0]
  def change
    create_table :subscribers do |t|
      t.string :uuid
      t.string :email
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
