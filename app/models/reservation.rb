class Reservation < ApplicationRecord
    belongs_to :flight, :optional=>true

end
