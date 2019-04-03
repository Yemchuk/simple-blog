class Article < ApplicationRecord
	has_many :comments, dependent: :delete_all
  validates :title, :text, presence: true

  def subject
    title
  end

end

