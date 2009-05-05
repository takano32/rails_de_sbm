class CreateBookmarks < ActiveRecord::Migration
  def self.up
    create_table :bookmarks do |t|
      t.column :user_id, :integer, :null => false
      t.column :page_id, :integer, :null => false
      t.column :comment, :string, :limit =>1024
      t.column :created_at, :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :bookmarks
  end
end
