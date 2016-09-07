class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :source, :string
      t.column :points, :integer
      t.column :username, :string

      t.timestamps

    end
  end
end
