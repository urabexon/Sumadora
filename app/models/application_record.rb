class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.looks(searches, words)
    if searches == "perfect_match"
      @postbrain = PostBrain.where("title LIKE ?", "#{words}")
    else
      @postbrain = PostBrain.where("title LIKE ?", "%#{words}%")
    end
  end
end
