class Comentario < ApplicationRecord
 belongs_to :User
 validates: conteudo, length: { maximum: 140 }
end
