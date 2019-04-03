require 'rails_helper'

describe Article do
  describe "Validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Lorem Ipsum')
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      #создаем статью, но с комментвми
      article = create(:article_with_comments)

      #проверка
      expect(article.last_comment.body).to eq "comment body 3"

    end
  end
end
