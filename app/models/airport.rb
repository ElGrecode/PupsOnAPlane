class Airport < ActiveRecord::Base
  has_many :departure_flights, class_name: "Flight",
  foreign_key: :departure_airport_id, inverse_of: :departure_airport
  
  has_many :arrival_flights, class_name: "Flight",
  foreign_key: :arrival_airport_id, inverse_of: :arrival_airport

  has_many :home_crew_members, class_name: "CrewMember",
  foreign_key: :home_airport_id, inverse_of: :home_airport

end
