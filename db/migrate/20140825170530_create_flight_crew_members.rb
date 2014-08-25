class CreateFlightCrewMembers < ActiveRecord::Migration
  def change
    create_table :flight_crew_members do |t|
      t.references :flight, index: true
      t.references :crew_member, index: true

      t.timestamps
    end
  end
end
