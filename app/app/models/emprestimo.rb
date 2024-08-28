class Emprestimo < ApplicationRecord
    belongs_to :usuario
    belongs_to :livro
  
    validates :data_emprestimo, presence: true
    validates :data_devolucao, presence: true
    validates :usuario_id, presence: true
    validates :livro_id, presence: true
  end
  