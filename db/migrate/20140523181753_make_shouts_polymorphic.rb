class MakeShoutsPolymorphic < ActiveRecord::Migration
  def up
    remove_column :shouts, :body
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer
    add_index :shouts, [:content_type, :content_id] 
  end

  def down
    add_column :shouts, :body, :string
    remove_column :shouts, :content_type, :string
    remove_column :shouts, :content_id, :integer
    remove_index :shouts, [:content_type, :content_id] 
  end
end
