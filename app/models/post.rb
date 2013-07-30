class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true,
                      length: { minimum: 2 }
  validates :location, presence: true
end
