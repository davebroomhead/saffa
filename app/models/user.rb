class User < ApplicationRecord

    has_secure_password 

    has_many :bookings

    validates :email, presence: true, uniqueness: true  
    validates :password, length: { in: 6..20 }
    
    validates_confirmation_of :password
    
end
