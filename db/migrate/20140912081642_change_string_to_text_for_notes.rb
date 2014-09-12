class ChangeStringToTextForNotes < ActiveRecord::Migration
  def change
     change_column :notes, :body, :text, null:false, default:0
  end
end
