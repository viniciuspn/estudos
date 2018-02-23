class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :cel_phone
      t.string :address

      t.timestamps
    end
  end
end
