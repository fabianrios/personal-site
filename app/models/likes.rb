class Likes < ActiveRecord::Base
  attr_accessible :likes, :project_id, :views
  belongs_to :project
end
