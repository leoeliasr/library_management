class Emprestimo < ApplicationRecord
    belongs_to :usuario
    belongs_to :livro
  
    validates :data_empréstimo, presence: true
    validates :data_devolução, presence: true
    validates :usuario_id, presence: true
    validates :livro_id, presence: true
  end
  