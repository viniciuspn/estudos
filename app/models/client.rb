class Client < ApplicationRecord
	has_many :client_cursos
	has_many :cursos, through: :client_cursos
	validates :name, presence: true, uniqueness: true
end
