class Article < ApplicationRecord
	has_many :comments, dependent: :delete_all
  validates :title, :text, presence: true
  validates :title, length: { maximum: 140 }
  validates :text, length: { maximum: 4000 }


  def subject
    title
  end

  def last_comment
    comments.last
  end

end

