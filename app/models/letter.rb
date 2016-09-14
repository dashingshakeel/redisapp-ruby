class Letter < ActiveRecord::Base
  def self.top_10
    limit(10).order(scroe: :desc)
  end
end
