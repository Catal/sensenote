class Note < ActiveRecord::Base
  has_many :notes_groups
  has_many :groups, :through => :notes_groups

  validates_presence_of :title, :body
  def self.search(search)
    if search.blank?
      Note.all
    else
      Note.where(['title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%"])
    end
  end

end
