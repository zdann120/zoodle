class AddFinalToChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :choices, :final, :boolean, default: :false
  end
end
