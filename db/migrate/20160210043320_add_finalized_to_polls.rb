class AddFinalizedToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :finalized, :boolean, default: :false
  end
end
