class ForumThread < ApplicationRecord

    allowed_categories = ["Barter", "Buy with AvoCurve Coin", "Off-Advice", "Other"]

    validates :author, presence: true
   validates :title, presence: true
    validates :body, presence: true
    validates :category, presence: true,:inclusion=> { :in => allowed_categories }
    belongs_to :user, required: true
    has_many :forum_thread_comments, dependent: :destroy
end
