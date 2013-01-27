class Brain < ActiveRecord::Base
  attr_accessible :flavor, :project_id, :status
  belongs_to :project
end
