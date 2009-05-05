class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.column :uri, :string, :limit=>1024, :null => false
      t.column :title, :string, :limit=>1024

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
