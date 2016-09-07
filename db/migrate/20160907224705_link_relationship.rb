class LinkRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :link_id, :integer
  end
end
