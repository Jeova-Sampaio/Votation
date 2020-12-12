class Votation < ApplicationRecord
    validates :cpf, presence: true, uniqueness: true
end
