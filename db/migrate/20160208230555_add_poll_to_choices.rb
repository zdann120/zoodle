class AddPollToChoices < ActiveRecord::Migration[5.0]
  def change
    add_reference :choices, :poll, foreign_key: true
  end
end
