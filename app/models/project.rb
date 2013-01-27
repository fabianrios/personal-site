class Project < ActiveRecord::Base
  default_scope :order => 'name'
  has_one :tags, dependent: :destroy
  has_one :etiqueta
  has_one :brain, dependent: :destroy
  has_one :likes, dependent: :destroy
  attr_accessible :commercial, :description, :fecha, :image, :label, :link_url, :name
  validates :name, :description, :image, :link_url, :presence => true
  validates :name, :uniqueness => true
  validates :link_url, :uniqueness => true
  validates :image, :format => {
  :with => %r{\.(gif|jpg|png)$}i,
  :message => 'debe ser una URL con una imagen GIF, JPG o PNG.'
  }
end
