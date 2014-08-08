class RenameColumnImageDir < ActiveRecord::Migration
  def self.up
    rename_column :profiles, :image_dir, :avatar
  end

  def self.down
    rename_column :profiles, :image_dir, :avatar
  end
end
