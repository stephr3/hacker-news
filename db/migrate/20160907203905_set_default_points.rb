class SetDefaultPoints < ActiveRecord::Migration[5.0]
  def change
    change_column :links, :points, :integer, :default => 0
  end
end
