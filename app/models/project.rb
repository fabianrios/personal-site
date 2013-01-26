class Project < ActiveRecord::Base
  attr_accessible :commercial, :description, :fecha, :image, :label, :link_url, :name
  validates :name, :description, :image, :link_url, :presence => true
  validates :name, :uniqueness => true
  validates :link_url, :uniqueness => true
  validates :image, :format => {
  :with => %r{\.(gif|jpg|png)$}i,
  :message => 'debe ser una URL con una imagen GIF, JPG o PNG.'
  }
end
