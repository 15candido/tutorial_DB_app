class User < ApplicationRecord
  has_many: comentario
  validates FILL_IN, presence: true
end
