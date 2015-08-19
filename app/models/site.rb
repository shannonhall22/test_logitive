class Site < ActiveRecord::Base

  has_many :placements
  belongs_to :media_plan_site

end
