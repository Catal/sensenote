class Note < ActiveRecord::Base

  def self.search(search)
    if search.blank?
      Note.all
    else
      Note.where(['title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%"])
    end
  end

end