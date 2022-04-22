class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  
  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end

  # def self.less_than_two_words
  #   name = :name.split
  #   if name.size < 2
  #     errors.add(:name, "must be greater than or equal to two words")
  #   end
  # end

end