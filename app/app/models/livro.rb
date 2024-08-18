class Livro < ApplicationRecord
    
    validates :isbn, presence: { message: 'não pode ficar em branco' },
                     length: { is: 13, message: 'deve ter exatamente 13 caracteres' },
                     uniqueness: { message: 'já está em uso' }
  
    # Validações para os campos nome, autor e genero
    validates :nome, presence: { message: 'não pode ficar em branco' }
    validates :autor, presence: { message: 'não pode ficar em branco' }
    validates :genero, presence: { message: 'não pode ficar em branco' }
    after_initialize :set_default_disponivel, if: :new_record?
  
    private
  
    def set_default_disponivel
      self.disponivel ||= true
    end
  end
  