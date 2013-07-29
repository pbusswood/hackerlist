class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true,
                      length: { minimum: 2 }
  validates :email, presence: true,
                    format: {
                      with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i,
                      message: "The email must be formatted correctly please."
                    }
  validates :location, presence: true
end
