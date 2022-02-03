class Booking < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :dam, optional: true

    validates :date_time, presence: true
    validates :car_reg, presence: true
    validates :user_id, presence: true
    validates :dam_id, presence: true

end
