class RenameColumnImageDir < ActiveRecord::Migration
  def self.up
    rename_column :profiles, :img_str, :avatar
  end

  def self.down
    rename_column :profiles, :img_str, :avatar
  end
end
