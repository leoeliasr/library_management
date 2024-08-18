class Usuario < ApplicationRecord

    validates :email, presence: { message: 'não pode ficar em branco' }
    validates :nome, presence: { message: 'não pode ficar em branco' }
    validates :cpf, presence: { message: 'não pode ficar em branco' }
    validates :telefone, presence: { message: 'não pode ficar em branco' }
    
end
