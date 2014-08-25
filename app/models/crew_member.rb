class CrewMember < ActiveRecord::Base
  belongs_to :home_airport, class_name: "Airport",
  foreign_key: :home_airport_id, inverse_of: :home_crew_members

  has_many :flight_crew_members
  has_many :flights, through: :flight_crew_members
end
