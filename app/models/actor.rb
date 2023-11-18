# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    my_actor_id = self.actor.id

    matching_actors = Actor.where({ :id => my_actor_id })

    the_actor = matching_actors.at(0)

    return the_actor
  end
end
