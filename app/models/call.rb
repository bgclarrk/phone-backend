class Call < ApplicationRecord
    validates :phone_number, :duration, presence: true


end