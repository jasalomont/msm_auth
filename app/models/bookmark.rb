class Bookmark < ApplicationRecord

validates :movie_id, :uniqueness => {:scope => :user_id, :message => "already bookmarked"}

  belongs_to :user
  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")

end
