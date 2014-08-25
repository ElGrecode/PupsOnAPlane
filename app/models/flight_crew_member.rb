class FlightCrewMember < ActiveRecord::Base
  belongs_to :flight
  belongs_to :crew_member
end
