class Stroll < ApplicationRecord
    belongs_to :dogsitter
    belongs_to :city
	belongs_to :dog
   
end
