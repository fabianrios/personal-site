class Project < ActiveRecord::Base
  attr_accessible :commercial, :description, :fecha, :image, :label, :link_url, :name
end
