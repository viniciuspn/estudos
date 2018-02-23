class ClientCurso < ApplicationRecord
  belongs_to :client
  belongs_to :curso
  validates :client, :curso, presence: true

end
