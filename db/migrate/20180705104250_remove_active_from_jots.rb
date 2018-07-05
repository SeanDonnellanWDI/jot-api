class RemoveActiveFromJots < ActiveRecord::Migration[5.1]
  def change
    remove_column :jots, :active, :boolean
  end
end
