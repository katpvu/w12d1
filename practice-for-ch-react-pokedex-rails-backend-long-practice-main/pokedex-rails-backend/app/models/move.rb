# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    #validations
    validates :name, length: { maximum: 255 }, presence: true, uniqueness: { message: "'%{value}' is already used" }

    #associations
    has_many :poke_moves

    has_many :pokemons,
        through: :poke_moves,
        source: :pokemon
end
