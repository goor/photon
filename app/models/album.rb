require 'sanitize'
class Album < ActiveRecord::Base
  belongs_to :user
  has_many :pictures, :dependent => :delete_all
  has_friendly_id :name, :use_slug => true
  before_save :project_sanitization
  validates_presence_of :name, :description
  
  def project_sanitization
    self.name = Sanitize.clean(self.name)
  end
  
end
