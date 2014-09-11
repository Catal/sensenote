class NotesGroup < ActiveRecord::Base
  belongs_to :note
  belongs_to :group
end
