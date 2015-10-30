class Contact < ActiveRecord::Base
  has_many :phones
  validates :firstname, :lastname, presence: true
  
  def name
    [firstname, lastname].join " "
  end
  
  def self.by_letter(letter)
    where("lastname LIKE ?", "#{letter}%").order(:lastname)
  end
  
end
