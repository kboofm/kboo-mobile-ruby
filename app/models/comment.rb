class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :episode
  validates :comment_text, :presence => true
end
