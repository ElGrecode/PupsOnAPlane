class Flight < ActiveRecord::Base
  # First hop - from the flight to the middle ground
  has_many :flight_crew_members
  # Second hop - from middle ground to crew_members
  has_many :crew_members, through: :flight_crew_members

  belongs_to :departure_airport, class_name: "Airport",
  foreign_key: :departure_airport_id, inverse_of: :departure_flights

  belongs_to :arrival_airport, class_name: "Airport",
  foreign_key: :arrival_airport_id, inverse_of: :arrival_flights
end
