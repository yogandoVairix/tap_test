class LocationProject < ActiveRecord::Base
  belongs_to :location
  belongs_to :project
end
