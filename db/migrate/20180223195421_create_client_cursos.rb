class CreateClientCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :client_cursos do |t|
      t.references :client, foreign_key: true
      t.references :curso, foreign_key: true
      t.decimal :nota
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
