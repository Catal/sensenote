class Profile < ActiveRecord::Base
  belongs_to :user, :autosave => true
  mount_uploader :avatar, AvatarUploader

  validates_presence_of :name
end
