class Player < ApplicationRecord
	belongs_to :club
	validates :name, length: { maximum: 30 },
                      presence: true
    validates :lastname, length: { maximum: 30},
    				  presence: true
    validates :goals, presence: true
    validates :club, presence:  true
end
