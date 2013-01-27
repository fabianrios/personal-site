class Etiquetas < ActiveRecord::Base
  attr_accessible :images, :label, :project_id
  belongs_to :project
end
