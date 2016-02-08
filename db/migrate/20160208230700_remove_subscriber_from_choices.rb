class RemoveSubscriberFromChoices < ActiveRecord::Migration[5.0]
  def change
    remove_reference :choices, :subscriber, foreign_key: true
  end
end
