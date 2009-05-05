class Page < ActiveRecord::Base
  has_many :users, :through => :bookmarks
  has_many :bookmarks, :order => "created_at desc"
  private

  def validate
    begin
      parsed_uri = URI.parse(uri)
      raise unless parsed_uri.host
      raise unless %w(http https).include?(parsed_uri.scheme)
    rescue
      errors.add(:uri, "invalid URI")
    end
  end
end
