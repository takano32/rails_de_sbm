class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :page  validates_uniqueness_of :page_id, :scope => :user_id
end
