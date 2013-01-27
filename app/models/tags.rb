class Tags < ActiveRecord::Base
  attr_accessible :image_reference, :project_id, :tag_label
  belongs_to :project
end
