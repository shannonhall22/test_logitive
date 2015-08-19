class MediaPlanSite < ActiveRecord::Base

  has_many :sites
  has_many :media_plans
end
