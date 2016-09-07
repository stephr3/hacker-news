class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :username, :string
      t.column :body, :text

      t.timestamps
    end
  end
end
